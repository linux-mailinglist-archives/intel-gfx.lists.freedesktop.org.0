Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D16DD14EB4E
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 11:55:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20ECD6E969;
	Fri, 31 Jan 2020 10:55:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3390E6E969
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 10:55:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 02:55:40 -0800
X-IronPort-AV: E=Sophos;i="5.70,385,1574150400"; d="scan'208";a="223105704"
Received: from bbiernac-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.157])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 02:55:37 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Bharadiya\, Pankaj" <pankaj.laxminarayan.bharadiya@intel.com>,
 pankaj.laxminarayan.bharadiya@intel.com, daniel@ffwll.ch, imre.deak@intel.com,
 rodrigo.vivi@intel.com, ville.syrjala@intel.com,
 intel-gfx@lists.freedesktop.org, uma.shankar@intel.com
In-Reply-To: <20200131063038.GA15798@plaxmina-desktop.iind.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200131063038.GA15798@plaxmina-desktop.iind.intel.com>
Date: Fri, 31 Jan 2020 12:55:45 +0200
Message-ID: <87pnez99ou.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] RFC: pipe writeback design for i915
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

On Fri, 31 Jan 2020, "Bharadiya,Pankaj" <pankaj.laxminarayan.bharadiya@intel.com> wrote:
> I am exploring the way of implementing the pipe writeback feature in i915 and
> would like to get early feedback on design.
>
> We have a Wireless display(WD) transcoder which can be used for capturing
> display pipe output to memory. It is generally intended for wireless display,
> but can be used for other functions such as in validation automation where crc
> based comparison is not feasible.

I think you should probably explore the use case and driver/igt impact
further before embarking on the implementation.

- How much do you need to modify existing code in kernel and igt to make
  use of writeback connectors?

- What kind of test coverage do you get? Pipe CRC is used in connection
  with the physical encoders. In contrast, you won't have that with WD
  transcoders. (Design wise I think this may mean you'll also need
  "writeback encoders", instead of trying to plug it into existing
  encoders.) So you'll only test the pipe side of things, which roughly
  corresponds to pipe CRC coverage I guess. I guess it could speed up
  that part of testing because you can then skip the physical
  connectors, but you do have to test them also. So it's not a panacea.


BR,
Jani.


>
> Bspec: 49275
>
> DRM core provides writeback connectors framework (drm_writeback.c) which can
> be used to expose hardware which can write the output from a pipe to a memory
> buffer.
>
> Writeback connectors have some additional properties, which userspace can use
> to query and control them, For more details, please refer [1]
>
> [1] https://01.org/linuxgraphics/gfx-docs/drm/gpu/drm-kms.html#writeback-connectors
>
>
> In order to implement pipe writeback feature in i915 using drm writeback
> connector framework, I am exploring below possibilities.
>
>   1. Extend the intel_connector to support writeback
>   2. Introduce new intel_writeback_connector type
>   3. ?? (any other better way?)
>
> 1# Extend the intel_connector to support writeback
> --------------------------------------------------
>
> drm_writeback connector is of drm_connector type and intel_connector is also
> of drm_connector type.
>
>   +-----------------------------------------------------------------------------+
>   |                                     |                                       |
>   | struct drm_writeback_connector {    |    struct intel_connector {           |
>   |         struct drm_connector base;  |            struct drm_connector base; |
>   |         .                           |            .                          |
>   |         .                           |            .                          |
>   |         .                           |            .                          |
>   | };                                  |    };                                 |
>   |                                     |                                       |
>   +-----------------------------------------------------------------------------+
>
> I see below issues for extending intel_connector to support
> drm_writeback_connector
>
>    - extending intel_connector as drm_writeback connector will introduce 2
>      copies of drm_connector.
>
>         struct intel_connector {
>         		struct drm_connector base;
>
> 			// new addition to handle wirteback
>         		struct drm_writeback_connector wb_conn;
>         		.
>         		.
>         		.
>         };
>
>    - drm_writeback_connector_init() will initalize wb_conn.base (drm_connector)
>      and we extract intel_encoder related functions (update_prepare, pre_enable,
>      disable, etc) from intel_connector.base (which will never get initialized
>      for writeback connector use case)
>
>      e.g. intel_display.c
>
>           static void intel_encoders_update_prepare(struct intel_atomic_state *state)
>           {
>           .
>           .
>           .
>            intel_connector = to_intel_connector(connector);
>           				encoder = intel_connector_primary_encoder(intel_connector);
>           				if (!encoder->update_prepare)
>           						continue;
>
>           				crtc = new_conn_state->crtc ?
>           						to_intel_crtc(new_conn_state->crtc) : NULL;
>           				encoder->update_prepare(state, encoder, crtc);
>           }
>
>
> Extending intel_connector to support drm_writeback_connector does not seem to
> be logical to me.
> Am I missing anything here? Can someone suggest a better approach?
>
>
> 2. Introduce new intel_writeback_connector connector type
> ---------------------------------------------------------
>
> I feel introducing the intel_writeback_connector is a logical approach, as it
> will follow the standard way of derivation from drm core structs (like
> intel_connector -> drm_connector, intel_encoder -> drm_encoder, etc)
>
>         struct intel_writeback_connector {
>         		struct drm_writeback_connector base;
>         		.
>         		.
>         		.
>         };
>
> And, I am thinking of below design -
>
>
>          +--------------------------------------------------------------+
>          |                          DRM CORE                            |
>          |                                                              |
>          |   +-------------------------+       +--------------------+   |
>          |   | drm writeback connector |------>|   drm connector    |   |
>          |   +-------------------------+       +--------------------+   |
>          |      ^                                                  ^    |
>          +------|--------------------------------------------------|----+
>                 |                       ^                          |
>                 |                       |                          |
>                 |                       v                          |
>                 |       +--------------------------------+         |
>                 |       |        intel display           |         |
>                 |       |      (intel_display.c)         |         |
>                 |       +--------------------------------+         |
>                 |              ^                  ^                |
>                 |              |                  |                |
>                 |              v                  v                |
>      +-----------+       +-----------+      +-----------+       +-----------+
>      | intel     |       |           |      |   intel   |       |  intel    |
>      | writeback |<------|  intel wd | ...  |   hdmi    |------>|  connector|
>      | connector |       |           |      |           |       |           |
>      +-----------+       +-----------+      +-----------+       +-----------+
>     (intel_writeback     (intel_wd.c)       (intel_hdmi.c)      (intel_connector.c)
>      _connector.c)
>
>
>    - Introduce intel_writeback_connector struct which will be of
>      drm_writeback_connector type.
>    - intel_writeback_connector.c: Will have intel writeback connector helper
>      functions.
>    - intel_wd.c: will register the drm_writeback_connector and will have
>      WD transcoder implementation
>
> To support this design, we will have to modify the intel_connector
> related macros and portion display driver where intel_connector related calls
> are made(and may be some other part of code).
>
> Ex:
>    - Identify the drm_connector type (drm_connector.connector_type,
>      DRM_MODE_CONNECTOR_WRITEBACK) and based on connector type select either
>      intel_connector or intel_writeback_connector and identify correct
>      intel_encoder to make encoder related calls (update_prepare, pre_enable,
>      disable, etc) 
>
> Is this the right approach? Do you see any issues/challenges with this?
>
> I would like to get early feedback before I really dive into code. 
> Your thoughts and suggestions are much appreciated.
>
> Thanks,
> Pankaj
>

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
