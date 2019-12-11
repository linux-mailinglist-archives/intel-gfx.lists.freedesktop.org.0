Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A00E711B86F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 17:20:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 668E36EB80;
	Wed, 11 Dec 2019 16:20:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FD806EB80
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 16:20:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 08:20:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="238604573"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.9.125])
 by fmsmga004.fm.intel.com with ESMTP; 11 Dec 2019 08:20:00 -0800
MIME-Version: 1.0
From: Chris Wilson <chris.p.wilson@intel.com>
User-Agent: alot/0.6
To: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191211160724.26467-1-venkata.s.dhanalakota@intel.com>
 <20191211160724.26467-2-venkata.s.dhanalakota@intel.com>
 <157608104352.27099.375715424760562558@skylake-alporthouse-com>
In-Reply-To: <157608104352.27099.375715424760562558@skylake-alporthouse-com>
Message-ID: <157608119873.27099.4590993229485525575@skylake-alporthouse-com>
Date: Wed, 11 Dec 2019 16:19:58 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Make warned variable private
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

Quoting Chris Wilson (2019-12-11 16:17:23)
> Quoting Venkata Sandeep Dhanalakota (2019-12-11 16:07:24)
> > Make each instance to report the hang only once.
> > 
> > Cc: Sudeep Dutt <sudeep.dutt@intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> 
> I still don't think so, since the we only want to pester the _user_ once
> to file a bug, and that is irrespective of the device.

Or to put it another way, the dmesg stream is global and this is a flag
around that stream.
-Chris
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
