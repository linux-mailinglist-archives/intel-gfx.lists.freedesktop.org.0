Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E3D8578E2
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 10:33:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B357210EAD7;
	Fri, 16 Feb 2024 09:33:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GJEs9qbc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB66510EACB;
 Fri, 16 Feb 2024 09:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708076032; x=1739612032;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=iwUaTGqwiZFrSCxfmdNYtdqasPu7tMzSEDsSz7R7Qrc=;
 b=GJEs9qbciOTgETFyK3TG1HINUgUgY0sPaO1flYBUOd0kFQrb2x3N46Go
 850UKkrGz3UkNv0bjxiz0763QWG/T1I5AUb5TanUEg8Zxj+OxgGG6fyoR
 rGIPOuLgGgfuHBh3pffHjlyG6lbiGSD2RaPz5pgRHxQisSlsBIZegNR/T
 zag8+obR1nibajQJH1nuXfJJWp1WSg7ka3e0efItNcW6hc51y32eoXWkS
 q2X3Js4ST7TeQSsm3BihBl7xNIi/5+XcqZchoFYcsh1goD1sb57Tb+nuD
 03iERPsxh6n+nZlshYt2GTB8fESmFAyFRAESUfOhiBKsMy2fWMAJd1yuo Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="2349172"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="2349172"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 01:33:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="912334484"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; d="scan'208";a="912334484"
Received: from lapeders-mobl1.ger.corp.intel.com (HELO [10.249.254.121])
 ([10.249.254.121])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 01:33:47 -0800
Message-ID: <b4b89a87b019c583bd58bf380d6376795a989c46.camel@linux.intel.com>
Subject: Re: [PULL] drm-intel-gt-next
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>,  Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 Oded Gabbay <ogabbay@kernel.org>, Lucas De Marchi
 <lucas.demarchi@intel.com>,  dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org,  dim-tools@lists.freedesktop.org
Date: Fri, 16 Feb 2024 10:33:45 +0100
In-Reply-To: <7ee39ada7fbcbd19b7dc3e780818b7f0941283a6.camel@linux.intel.com>
References: <Zc3iIVsiAwo+bu10@tursulin-desk>
 <CAPM=9twPjYvnAZQKEWrc2zvjTC4W2rfn9TWsHE8_QSgVUiPbOg@mail.gmail.com>
 <7ee39ada7fbcbd19b7dc3e780818b7f0941283a6.camel@linux.intel.com>
Autocrypt: addr=thomas.hellstrom@linux.intel.com; prefer-encrypt=mutual;
 keydata=mDMEZaWU6xYJKwYBBAHaRw8BAQdAj/We1UBCIrAm9H5t5Z7+elYJowdlhiYE8zUXgxcFz360SFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCBMaW51eCBlbWFpbCkgPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPoiTBBMWCgA7FiEEbJFDO8NaBua8diGTuBaTVQrGBr8FAmWllOsCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQuBaTVQrGBr/yQAD/Z1B+Kzy2JTuIy9LsKfC9FJmt1K/4qgaVeZMIKCAxf2UBAJhmZ5jmkDIf6YghfINZlYq6ixyWnOkWMuSLmELwOsgPuDgEZaWU6xIKKwYBBAGXVQEFAQEHQF9v/LNGegctctMWGHvmV/6oKOWWf/vd4MeqoSYTxVBTAwEIB4h4BBgWCgAgFiEEbJFDO8NaBua8diGTuBaTVQrGBr8FAmWllOsCGwwACgkQuBaTVQrGBr/P2QD9Gts6Ee91w3SzOelNjsus/DcCTBb3fRugJoqcfxjKU0gBAKIFVMvVUGbhlEi6EFTZmBZ0QIZEIzOOVfkaIgWelFEH
Organization: Intel Sweden AB, Registration Number: 556189-6027
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3 (3.50.3-1.fc39) 
MIME-Version: 1.0
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 2024-02-16 at 10:31 +0100, Thomas Hellstr=C3=B6m wrote:
> Hi, Dave
>=20
> On Fri, 2024-02-16 at 12:58 +1000, Dave Airlie wrote:
> > On Thu, 15 Feb 2024 at 20:06, Tvrtko Ursulin
> > <tvrtko.ursulin@linux.intel.com> wrote:
> > >=20
> > > Hi Dave, Daniel,
> > >=20
> > > First pull request for 6.9 with probably one more coming in one
> > > to
> > > two
> > > weeks.
> > >=20
> > > Nothing to interesting in this one, mostly a sprinkle of small
> > > fixes in
> > > GuC, HuC, Perf/OA, a tiny bit of prep work for future platforms
> > > and
> > > some
> > > code cleanups.
> > >=20
> > > One new uapi in the form of a GuC submission version query which
> > > Mesa
> > > wants for implementing Vulkan async compute queues.
> > >=20
> > > Regards,
> > >=20
> > > Tvrtko
> > >=20
> > > drm-intel-gt-next-2024-02-15:
> > > UAPI Changes:
> > >=20
> > > - Add GuC submission interface version query (Tvrtko Ursulin)
> > >=20
> > > Driver Changes:
> > >=20
> > > Fixes/improvements/new stuff:
> > >=20
> > > - Atomically invalidate userptr on mmu-notifier (Jonathan Cavitt)
> >=20
> > I've pulled this, but the above patch is triggering my this seems
> > wrong spider sense.
> >=20
> > This and probably the preceeding patch that this references seem to
> > move i915 to a long term pinning of userptr in memory with what I
> > can
> > see no accounting, and away from what the desired behaviour for
> > drivers should be.
>=20
> I can only answer for the first patch there, It was some time ago it
> was written, but at that point the pinning was held both by
> get_pages()
> and by submission. I removed the submission pinning and instead moved
> get_pages() to start of submission. So no significant change in
> pinning
> time there. For some reason I can't clearly remember the submission
> pinning got in the way of the vm_bind implementation. That said, the
> pinning AFAIR is released in the gem shrinker. And it's different
> from
> what other drivers are doing. i915 never got to the point where it
> completely dropped the pinning after the binding.

(And with the first patch I mean "Simplify userptr locking")
/Thomas


>=20
> /Thomas
>=20
>=20
> >=20
> > It also feels like the authorship on this might be lies which also
> > worries me.
> >=20
> > Dave.
>=20

