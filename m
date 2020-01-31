Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA4F14E8E1
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 07:42:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF2AC6E948;
	Fri, 31 Jan 2020 06:42:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B2F46E948
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 06:42:05 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 22:42:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,384,1574150400"; d="scan'208";a="253252251"
Received: from plaxmina-desktop.iind.intel.com ([10.145.162.62])
 by fmsmga004.fm.intel.com with ESMTP; 30 Jan 2020 22:42:02 -0800
Date: Fri, 31 Jan 2020 12:00:39 +0530
From: "Bharadiya,Pankaj" <pankaj.laxminarayan.bharadiya@intel.com>
To: pankaj.laxminarayan.bharadiya@intel.com, jani.nikula@linux.intel.com,
 daniel@ffwll.ch, imre.deak@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@intel.com, intel-gfx@lists.freedesktop.org,
 uma.shankar@intel.com
Message-ID: <20200131063038.GA15798@plaxmina-desktop.iind.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [Intel-gfx] RFC: pipe writeback design for i915
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I am exploring the way of implementing the pipe writeback feature in i915 and
would like to get early feedback on design.

We have a Wireless display(WD) transcoder which can be used for capturing
display pipe output to memory. It is generally intended for wireless display,
but can be used for other functions such as in validation automation where crc
based comparison is not feasible.

Bspec: 49275

DRM core provides writeback connectors framework (drm_writeback.c) which can
be used to expose hardware which can write the output from a pipe to a memory
buffer.

Writeback connectors have some additional properties, which userspace can use
to query and control them, For more details, please refer [1]

[1] https://01.org/linuxgraphics/gfx-docs/drm/gpu/drm-kms.html#writeback-connectors


In order to implement pipe writeback feature in i915 using drm writeback
connector framework, I am exploring below possibilities.

  1. Extend the intel_connector to support writeback
  2. Introduce new intel_writeback_connector type
  3. ?? (any other better way?)

1# Extend the intel_connector to support writeback
--------------------------------------------------

drm_writeback connector is of drm_connector type and intel_connector is also
of drm_connector type.

  +-----------------------------------------------------------------------------+
  |                                     |                                       |
  | struct drm_writeback_connector {    |    struct intel_connector {           |
  |         struct drm_connector base;  |            struct drm_connector base; |
  |         .                           |            .                          |
  |         .                           |            .                          |
  |         .                           |            .                          |
  | };                                  |    };                                 |
  |                                     |                                       |
  +-----------------------------------------------------------------------------+

I see below issues for extending intel_connector to support
drm_writeback_connector

   - extending intel_connector as drm_writeback connector will introduce 2
     copies of drm_connector.

        struct intel_connector {
        		struct drm_connector base;

			// new addition to handle wirteback
        		struct drm_writeback_connector wb_conn;
        		.
        		.
        		.
        };

   - drm_writeback_connector_init() will initalize wb_conn.base (drm_connector)
     and we extract intel_encoder related functions (update_prepare, pre_enable,
     disable, etc) from intel_connector.base (which will never get initialized
     for writeback connector use case)

     e.g. intel_display.c

          static void intel_encoders_update_prepare(struct intel_atomic_state *state)
          {
          .
          .
          .
           intel_connector = to_intel_connector(connector);
          				encoder = intel_connector_primary_encoder(intel_connector);
          				if (!encoder->update_prepare)
          						continue;

          				crtc = new_conn_state->crtc ?
          						to_intel_crtc(new_conn_state->crtc) : NULL;
          				encoder->update_prepare(state, encoder, crtc);
          }


Extending intel_connector to support drm_writeback_connector does not seem to
be logical to me.
Am I missing anything here? Can someone suggest a better approach?


2. Introduce new intel_writeback_connector connector type
---------------------------------------------------------

I feel introducing the intel_writeback_connector is a logical approach, as it
will follow the standard way of derivation from drm core structs (like
intel_connector -> drm_connector, intel_encoder -> drm_encoder, etc)

        struct intel_writeback_connector {
        		struct drm_writeback_connector base;
        		.
        		.
        		.
        };

And, I am thinking of below design -


         +--------------------------------------------------------------+
         |                          DRM CORE                            |
         |                                                              |
         |   +-------------------------+       +--------------------+   |
         |   | drm writeback connector |------>|   drm connector    |   |
         |   +-------------------------+       +--------------------+   |
         |      ^                                                  ^    |
         +------|--------------------------------------------------|----+
                |                       ^                          |
                |                       |                          |
                |                       v                          |
                |       +--------------------------------+         |
                |       |        intel display           |         |
                |       |      (intel_display.c)         |         |
                |       +--------------------------------+         |
                |              ^                  ^                |
                |              |                  |                |
                |              v                  v                |
     +-----------+       +-----------+      +-----------+       +-----------+
     | intel     |       |           |      |   intel   |       |  intel    |
     | writeback |<------|  intel wd | ...  |   hdmi    |------>|  connector|
     | connector |       |           |      |           |       |           |
     +-----------+       +-----------+      +-----------+       +-----------+
    (intel_writeback     (intel_wd.c)       (intel_hdmi.c)      (intel_connector.c)
     _connector.c)


   - Introduce intel_writeback_connector struct which will be of
     drm_writeback_connector type.
   - intel_writeback_connector.c: Will have intel writeback connector helper
     functions.
   - intel_wd.c: will register the drm_writeback_connector and will have
     WD transcoder implementation

To support this design, we will have to modify the intel_connector
related macros and portion display driver where intel_connector related calls
are made(and may be some other part of code).

Ex:
   - Identify the drm_connector type (drm_connector.connector_type,
     DRM_MODE_CONNECTOR_WRITEBACK) and based on connector type select either
     intel_connector or intel_writeback_connector and identify correct
     intel_encoder to make encoder related calls (update_prepare, pre_enable,
     disable, etc) 

Is this the right approach? Do you see any issues/challenges with this?

I would like to get early feedback before I really dive into code. 
Your thoughts and suggestions are much appreciated.

Thanks,
Pankaj

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
