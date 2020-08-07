Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0F523EAB4
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 11:46:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CDE96E9AD;
	Fri,  7 Aug 2020 09:46:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AF4D6E9AD
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 09:46:11 +0000 (UTC)
IronPort-SDR: xEDrI7CuVgEr7MeZA+X3h8q7iyIzpiCb5VR+izQ7X6xAGhSr7lAMcU2TIWMAavpEh8FI/2FkOP
 4wIuSWPlXZ7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="152277680"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="152277680"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:46:10 -0700
IronPort-SDR: fj6rqg3bim2Z9cFqnNiNF6iGh9Sf40WMOPmj+CmFijeZc0V+ZZmADYpmcFS3cs+gjuvfQyD7oB
 rxYGLSw/yJDA==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="293617342"
Received: from walshric-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.12.98])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:46:08 -0700
MIME-Version: 1.0
In-Reply-To: <CAPM=9tzvetxhBJBOC60ydOVcTN9ujtHLCODFNwGtONTDzuzwZA@mail.gmail.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
 <20200710115757.290984-34-matthew.auld@intel.com>
 <CAPM=9tzvetxhBJBOC60ydOVcTN9ujtHLCODFNwGtONTDzuzwZA@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>, Matthew Auld <matthew.auld@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <159679356610.9764.14135340597008978819@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Fri, 07 Aug 2020 12:46:06 +0300
Subject: Re: [Intel-gfx] [RFC 33/60] drm/i915/lmem: support pwrite
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Dave Airlie (2020-07-13 08:09:30)
> On Fri, 10 Jul 2020 at 22:00, Matthew Auld <matthew.auld@intel.com> wrote:
> >
> > We need to add support for pwrite'ing an LMEM object.
> 
> why? DG1 is a discrete GPU, these interfaces we already gross and
> overly hacky for integrated, I'd prefer not to drag them across into
> discrete land.
> 
> same goes for pread.
> 
> You have no legacy userspace here, userspace needs change to support
> LMEM, it can be fixed to avoid legacy ioctls paths.

(This answer is really along the same lines as related to the
relocations, which I sent earlier in the end of this thread)

PREAD/PWRITE are used by IGT tests indirectly in the testing, as
a means to validate test end results as an example. So IGT
reworking is needed not to lose testing coverage when the
functionality is disabled.

Same reasoning as with relocations, as to why this is included
in the RFC; it will get a functional stack with least changes and
is virtually no extra effort to carry. It's recognized that once
pre-Gen12 hardware ceases to exist, there are optimization
opportunities.

Based on the feedback to this Request for Comments series, we are
expediting the work on those IGT reworks.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
