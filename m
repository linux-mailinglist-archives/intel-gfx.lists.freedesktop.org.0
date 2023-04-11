Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7996DE175
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 18:51:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED46D10E5CB;
	Tue, 11 Apr 2023 16:51:00 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8334E10E5C9
 for <Intel-GFX@lists.freedesktop.org>; Tue, 11 Apr 2023 16:50:58 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id
 ffacd0b85a97d-2ef1e98d6bfso422592f8f.0
 for <Intel-GFX@lists.freedesktop.org>; Tue, 11 Apr 2023 09:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1681231856; x=1683823856;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=QL/V4wI4ML101SKyIQPan4pJ4v63I4EVDHy0KtN5OQg=;
 b=gUTbCnAJ3y8fVip7IvJBfz7Tkf5sPyWHCR4IxZL5t4tAqaO0AbwGMLM8cbfk1F49ei
 3uPOfe9Gl9aD2LEUImr5gtjJ9kRaJUHMZSbmIHj7fgu27ZsjJ/IjGJdcvXmQpNxnEV/M
 wB2f7xqWBOEfi3CePjJP1xxGJ4w7ZSdjWS18w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681231856; x=1683823856;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QL/V4wI4ML101SKyIQPan4pJ4v63I4EVDHy0KtN5OQg=;
 b=soQehJaZmUCGWJMX9BPVnuTYEA1rorZbSjbfVkXzN2wl3+BfFE5xjKvGWLTlKsUBMU
 jP094j/8lN6hmxC6OZ10J6koZmDmo9rjHgIOPJGhaTCTtrlIyGT/IoFq7vecYUjGyCuF
 1TV9pDXv7gSdSgDqXcnpnurCEBcPMMhGvJqdbPRj5jJATJrzH64mNCmKQiJAWVQu1WKh
 UM0Bf/zJNVToDTEnOJP6fONBrk0Yz1SSX2sOpUsbNN63hPV6O4wxLJD27cVPhVm34UyL
 FMgFMFPnLCFdkZP3NCExaaXwusu4IuWT1VXNPeaAQiuL0JCR1ib8FX3AlNstwoID0gfm
 Z8vQ==
X-Gm-Message-State: AAQBX9fDu4J1faQusPii8tKGjytMp77Jy2OaFwLX2EizoadJfr/6ITiQ
 0GGsNHi0KRYfy70v4XsqSzBaJQ==
X-Google-Smtp-Source: AKy350amJ281Ietp9/8+xhDYRWhGSeAhOHWeWARx9YVB0rDDNC4BMvK5mWe+YGptUJXtA/FglW/3DQ==
X-Received: by 2002:a5d:4750:0:b0:2ef:b4e1:d0da with SMTP id
 o16-20020a5d4750000000b002efb4e1d0damr6830605wrs.7.1681231856311; 
 Tue, 11 Apr 2023 09:50:56 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 i5-20020adff305000000b002efb4dc5a5fsm11159695wro.7.2023.04.11.09.50.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Apr 2023 09:50:55 -0700 (PDT)
Date: Tue, 11 Apr 2023 18:50:53 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <ZDWP7TRexJRphUNQ@phenom.ffwll.local>
References: <20230410192523.2020049-1-John.C.Harrison@Intel.com>
 <ZDVxocPZR1Ad2QLa@intel.com>
 <f4c5dfbf-6dc2-52cb-c31d-c6e78646bcac@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f4c5dfbf-6dc2-52cb-c31d-c6e78646bcac@intel.com>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 0/2] Add support for dumping error captures
 via kernel logging
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
Cc: Intel-GFX@lists.freedesktop.org, DRI-Devel@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 11, 2023 at 09:41:04AM -0700, John Harrison wrote:
> On 4/11/2023 07:41, Rodrigo Vivi wrote:
> > On Mon, Apr 10, 2023 at 12:25:21PM -0700, John.C.Harrison@Intel.com wrote:
> > > From: John Harrison <John.C.Harrison@Intel.com>
> > > 
> > > Sometimes, the only effective way to debug an issue is to dump all the
> > > interesting information at the point of failure. So add support for
> > > doing that.
> > No! Please no!
> > We have some of this on Xe and I'm hating it. I'm going to try to remove
> > from there soon. It is horrible when you lost the hability to use dmesg
> > directly because it goes over the number of lines it saves... or even
> > with dmesg -w it goes over the number of lines of your terminal...
> > or the ssh and serial slowness when printing a bunch of information.
> > 
> > We probably want to be able to capture multiple error states and be
> > able to cross them with a kernel timeline, but definitely not overflood
> > our log terminals.
> I think you are missing the point.
> 
> This is the emergency backup plan for when nothing else works. It is not on
> by default. It should never happen on an end user system unless we
> specifically request them to run with a patched kernel to enable a dump at a
> specific point.
> 
> But there are (many) times when nothing else works. In those instances, it
> is extremely useful to be able to dump the system state in this manner.
> 
> It is code we have been using internally for some time and it has helped
> resolve a number of different difficult to debug bugs. As our Xe generation
> platforms are now out in the wild and no longer just internal, it is also
> proving important to have this facility available in upstream trees as well.
> And having it merged rather than floating around as random patches passed
> from person to person is far easier to manage and would also help reduce the
> internal tree burden.

Note that Xe needs to move over to devcoredump infrastructure, so if you
need dumping straight to dmesg that would be a patch for that subsystem in
the future.

Not sure how much you want to add fun here in the i915-gem deadend, I'll
leave that up to i915 maintainers.

Just figured this is a good place to drop this aside :-)
-Daniel

> 
> John.
> 
> > > Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> > > 
> > > 
> > > John Harrison (2):
> > >    drm/i915: Dump error capture to kernel log
> > >    drm/i915/guc: Dump error capture to dmesg on CTB error
> > > 
> > >   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c |  53 +++++++++
> > >   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |   6 +
> > >   drivers/gpu/drm/i915/i915_gpu_error.c     | 130 ++++++++++++++++++++++
> > >   drivers/gpu/drm/i915/i915_gpu_error.h     |   8 ++
> > >   4 files changed, 197 insertions(+)
> > > 
> > > -- 
> > > 2.39.1
> > > 
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
