Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B611CD436
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 10:49:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E801D6E3EB;
	Mon, 11 May 2020 08:49:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F2406E3EB
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 08:49:54 +0000 (UTC)
IronPort-SDR: C3Kg6ZFaxOCkp6VB8RaUieUId2ra4j+GhjB9aUOWfP9KUkhj78c0HVWdelcqvd9cgOfQk/bJjA
 F85g6pSJnhGA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 01:49:54 -0700
IronPort-SDR: ToAi05Q8l/fjEp2GXjogLCFTFS5M4pnPj1l0b35jHqwMhNAV4tyb54Pf/shNzbl0uW03mEB7xN
 ydhYdffkCAgg==
X-IronPort-AV: E=Sophos;i="5.73,379,1583222400"; d="scan'208";a="436623314"
Received: from gschoede-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.164])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 01:49:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Manna\, Animesh" <animesh.manna@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <a8a54264-6fa0-1b21-a467-cd3a5e47761b@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200506131112.19581-1-animesh.manna@intel.com>
 <22382e1c-e5e1-f8c8-74f3-83bd6b649978@linux.intel.com>
 <a8a54264-6fa0-1b21-a467-cd3a5e47761b@intel.com>
Date: Mon, 11 May 2020 11:49:49 +0300
Message-ID: <87mu6e6eky.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915/dsb: Pre allocate and late
 cleanup of cmd buffer
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 11 May 2020, "Manna, Animesh" <animesh.manna@intel.com> wrote:
> On 08-05-2020 16:44, Maarten Lankhorst wrote:
>> Op 06-05-2020 om 15:11 schreef Animesh Manna:
>>> -	struct intel_dsb *dsb = intel_dsb_get(crtc);
>>> +	struct intel_dsb *dsb = (struct intel_dsb *)&crtc_state->dsb;
>> Why the cast? Unconstify crtc_state as it's obviously not const any more.
>
> Dsb cmd buffer filling is done in load_lut function, so need to
> unconstify. Otherwise throwing warning during compilation.

You shouldn't just throw the const away like that using a cast. It's a
bad idea. Don't do it.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
