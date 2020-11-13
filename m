Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B288E2B197C
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 12:03:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 340236E45E;
	Fri, 13 Nov 2020 11:02:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9693A6E486
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 11:02:57 +0000 (UTC)
IronPort-SDR: UjhHnRYAefiYV5/vFFkn1objHYHcgKhAj1UrstoSYaZ4oYknH5Oc9Auk4C7Vd6DZR1agfelP2D
 qVEFGiOMzoYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="166948434"
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="166948434"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 03:02:56 -0800
IronPort-SDR: xleA/xG02QneDANtjW51pRXMIoT+rQ7xHEjRi7TfOBgb1xb8mBaz6boV/stOymoAwQ0cv1uhgE
 nFS/x0UR3hug==
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="474623093"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.213.227.34])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 03:02:55 -0800
MIME-Version: 1.0
In-Reply-To: <f7469401-8537-964d-5c9a-8647b0ed060a@linux.intel.com>
References: <20201010002105.45152-1-umesh.nerlige.ramappa@intel.com>
 <20201010002105.45152-5-umesh.nerlige.ramappa@intel.com>
 <160521027215.25046.10810273417498100458@build.alporthouse.com>
 <f7469401-8537-964d-5c9a-8647b0ed060a@linux.intel.com>
From: Chris Wilson <chris.p.wilson@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 11:02:52 +0000
Message-ID: <160526537264.29612.11371630256369317325@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/gt: Refactor _wa_add to reuse
 wa_index and wa_list_grow
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

Quoting Tvrtko Ursulin (2020-11-13 10:40:07)
> 
> On 12/11/2020 19:44, Chris Wilson wrote:
> > Quoting Umesh Nerlige Ramappa (2020-10-10 01:21:03)
> > An inherited problem, but I'm a little unnerved by the apparent leak of
> > wa->list here.
> > 
> > Paging Tvrtko to see if he can remember if there's a hidden trick.
> 
> I don't see any tricks, just a memory leak for all lists with more than 
> 16 unique registers on the wa list. :(

As I read it, since each pair of perf open/close will cause us to
reallocate the lists, we need to address this leak first before it
becomes user controllable. Apologies for yet another delay.
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
