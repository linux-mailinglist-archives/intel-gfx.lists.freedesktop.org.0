Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9082C59158
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 18:20:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7641E10E1C9;
	Thu, 13 Nov 2025 17:20:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cfzqW7mf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8076210E1C9;
 Thu, 13 Nov 2025 17:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763054423; x=1794590423;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=dOPmEC1G2HFkCRUxtE3P6DWjs5Thaab295zWYnc5M+U=;
 b=cfzqW7mfy0dxEKx0mqQRwttUCO2mFgC0tDZagVG2D4Kdn+TskVUv4elN
 pRae2E49Piqq6rRAIDiH6OOdHxp3dEejvSN4NmdG5SqOMfUe7XD6laPLt
 VKyuTBDK60xmtvJIFxQTH8hKKWOOXiIvBj2oxvMvsnU6Qu2QFA/twf1XJ
 KYMsk29qTA3IGSsF3IqFUDb2cEfVovG+N8wybUJ5e7Ko68G+FtwnF1OK3
 Ve9vaIyj1ci3uC8ymGmc7LznXKHXZ5x4VFNTSuLZI839m9/WnR6PdXoR4
 +pwS1oydWZLzIY4OKwnWfYI2ASo5DC5ND6hw52E/hT4zVOUmvVpOe8LCU Q==;
X-CSE-ConnectionGUID: 6L5ywrZkT9qd/hFsX3ewzA==
X-CSE-MsgGUID: WEJS4/jzQNSU7EGUmypsOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="65302190"
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="65302190"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 09:20:22 -0800
X-CSE-ConnectionGUID: MiPe1O22SI2F4mtscIse3g==
X-CSE-MsgGUID: 2iQLG7XLQdiZU4xisK595w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="220197549"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [10.245.245.123])
 ([10.245.245.123])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 09:20:20 -0800
Message-ID: <c4fe42a84823880c7d874e94097b8a4f0d2b08b0.camel@linux.intel.com>
Subject: Re: Cache coherency issues when reading from intel Xe buffer.
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Jakub Prussak <Jakub.Prussak@synaptics.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Cc: PPD-Penguins <ppdpenguins@synaptics.com>, Lucas De Marchi	
 <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Dave
 Airlie	 <airlied@redhat.com>, "intel-gfx@lists.freedesktop.org"	
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 13 Nov 2025 18:20:17 +0100
In-Reply-To: <PH0PR03MB6299690EA881490196BF9A4FE9CDA@PH0PR03MB6299.namprd03.prod.outlook.com>
References: <PH0PR03MB6299572C46068849DBDD3A88E9C2A@PH0PR03MB6299.namprd03.prod.outlook.com>
 <ac533b9a7b0f8aa2bb3a0f037db1a65ac7fc5807@intel.com>
 <PH0PR03MB6299690EA881490196BF9A4FE9CDA@PH0PR03MB6299.namprd03.prod.outlook.com>
Organization: Intel Sweden AB, Registration Number: 556189-6027
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3 (3.54.3-2.fc41) 
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

Hi, Jakub.

On Thu, 2025-11-13 at 12:31 +0000, Jakub Prussak wrote:
> Hello
>=20
> Thank you for looking at it.
>=20
> Regarding reproduction without an out-of-tree modules: the UDL module
> is producing the same artifacts.
>=20
> I had a glance at the github issue. First, "new Intel devices" is
> quite
> vague. Which devices exactly?
> Devices from Metor Lake and Arrow Lake family so far. From what we
> gathered from users this includes, but is not limited to:
>=20
> =C2=A0 *
> Intel(R) Core(TM) Ultra 9 275HX
> =C2=A0 *
> Intel(R) Core(TM) Ultra 7 265HX
> =C2=A0 *
> Intel(R) Core(TM) Ultra 5 235H
> =C2=A0 *
> Intel(R) Core(TM) Ultra 7 155H
> =C2=A0 *
> Intel(R) Core(TM) Ultra 7 265K
>=20
> The problem occurs only on new hardwre, regardless of the kernel or
> our software version. When using any older processor with the same
> combination of kernel version with our product/UDL, everything
> behaves fine.

The i915 and xe driver have different approaches to ensuring coherency
on integrated devices. While the xe driver does not officially support
integrated HW prior to LNL, you could experiment to provide an
additional data point by switching a Meteor Lake device over to the xe
driver using the method described here:

https://www.phoronix.com/review/intel-i915-xe-linux-2025

If that gets rid of the issue we're in a better position to find
the culprit if it's on our side.

Thanks,
Thomas

>=20
> In the attached output of lspci one can see that the driver being
> used by kernel is actually i915, but the xe module is also loaded.
> That's why we initially connected that to the xe module.
> Second, seems to me there are a lot of people having issues with
> non-Intel GPUs as well. What makes you say this is related to i915 or
> xe
> drivers?
> While the similar kind of artifacts show under non-Intel GPUs, they
> only appear with the EVDI and are not reproducible under the UDL
> module. Also the time it takes to heal and the way the artifacts heal
> on AMD devices makes us think that this is a different type of issue.
> We will be looking at that, but maybe you have any suggestions what
> to look for?
>=20
> Regards
> Jakub Prussak
> ________________________________
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, November 10, 2025 5:48 PM
> To: Jakub Prussak <Jakub.Prussak@synaptics.com>;
> intel-xe@lists.freedesktop.org=C2=A0<intel-xe@lists.freedesktop.org>
> Cc: PPD-Penguins <ppdpenguins@synaptics.com>; Lucas De Marchi
> <lucas.demarchi@intel.com>; Thomas Hellstr=C3=B6m
> <thomas.hellstrom@linux.intel.com>; Rodrigo Vivi
> <rodrigo.vivi@intel.com>; Dave Airlie <airlied@redhat.com>;
> intel-gfx@lists.freedesktop.org=C2=A0<intel-gfx@lists.freedesktop.org>
> Subject: Re: Cache coherency issues when reading from intel Xe
> buffer.
>=20
> CAUTION: Email originated externally, do not click links or open
> attachments unless you recognize the sender and know the content is
> safe.
>=20
>=20
> On Thu, 06 Nov 2025, Jakub Prussak <Jakub.Prussak@synaptics.com>
> wrote:
> > Hello,
> >=20
> > For some time, users of DisplayLink USB-3 docking stations face
> > corruptions Ubuntu 24.04 on machines with Intel i915+Xe driver
> > (LENOVO
> > IdeaPad Pro 5 16IMH9 in our case)
> > Machines using only i915 driver are fine.
>=20
> AFAICT all IdeaPad Pro 5 16IMH9 models have Meteorlake GPU, and you
> should be using i915 driver with that. The attached dmesg only
> appears
> to have the i915 driver anyway. So how's the xe driver related here?
>=20
> > DisplayLink driver is using evdi kernel
> > module(
> > https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_Dis
> > playLink_evdi_blob_main_module&d=3DDwIBAg&c=3D7dfBJ8cXbWjhc0BhImu8wVIoU
> > FmBzj1s88r8EGyM0UY&r=3DW1EIKVsQFqx7ACp4Hsw-
> > KtUjZ5imGzUfM_7UN6O5xwk&m=3DJT0pLpFmiVNTCKbUp1LFei6Pu_3fQPGwh9cESk1co
> > qXMJlS_-
> > DbXDzPYP1hsvJk3&s=3DQ2kIS6_ZrX18OfHOYKDy3U8IxEF4rEnwgyDofnw08uA&e=3D=C2=
=A0)
> > that
> > works as drm output slave. It is using drm_prime exported buffers
> > from
> > i915 driver.
>=20
> Mmh, can you reproduce any of this running upstream kernels without
> out-of-tree modules? It's highly unlikely anyone from our side would
> start debugging scenarios with out-of-tree modules.
>=20
> > We had checked a way evdi access dma-buf exported buffer, e.g. if
> > it
> > is reading it within
> > dma_buf_begin_cpu_access/dma_buf_end_cpu_access.
> >=20
> > Also, we ruled out access to the buffer before all dma_fence's on
> > drm_plane are signaled.
> > Another approach was to wait on dma_resv resv object from
> > drm_gem_object's dma_buf_attachment, again with no luck.
> > The issue is reproducible with evdi's evdi_gem_object and generic
> > drm_gem_shmem_object implementations of drm_gem_object. Corruptions
> > are visible with all compositors - XServer, Gnome/mutter, weston.
> > Other kernel module facing this issue is udl.
> > Nothing was helpful and we suspect some cache coherency issues.
> >=20
> > The problem can be reproduced on the latest kernel on computers
> > with
> > new Intel devices, and a lot of our users face this problem
> > (
> > https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_Disp
> > layLink_evdi_issues_524&d=3DDwIBAg&c=3D7dfBJ8cXbWjhc0BhImu8wVIoUFmBzj1s
> > 88r8EGyM0UY&r=3DW1EIKVsQFqx7ACp4Hsw-
> > KtUjZ5imGzUfM_7UN6O5xwk&m=3DJT0pLpFmiVNTCKbUp1LFei6Pu_3fQPGwh9cESk1co
> > qXMJlS_-DbXDzPYP1hsvJk3&s=3DLX8y3cnAkcCfx8N45KMlHkwI031dlPc-
> > cy472qvNfwg&e=3D=C2=A0). The way to reproduce
> > it requires installing EVDI module
> > (
> > https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_Disp
> > layLink_evdi&d=3DDwIBAg&c=3D7dfBJ8cXbWjhc0BhImu8wVIoUFmBzj1s88r8EGyM0UY
> > &r=3DW1EIKVsQFqx7ACp4Hsw-
> > KtUjZ5imGzUfM_7UN6O5xwk&m=3DJT0pLpFmiVNTCKbUp1LFei6Pu_3fQPGwh9cESk1co
> > qXMJlS_-
> > DbXDzPYP1hsvJk3&s=3DZ3Egg6eKXYMKqHu0gc5dsxdjsQCiVGcgbBXYY2h4vUo&e=3D=C2=
=A0),
> > loading it and creating a
> > virtual screen (this can be achieved with this sample app:
> > https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_jakub=
-2Dprussak-2Dsynaptics_evdipp&d=3DDwIBAg&c=3D7dfBJ8cXbWjhc0BhImu8wVIoUFmBzj=
1s88r8EGyM0UY&r=3DW1EIKVsQFqx7ACp4Hsw-KtUjZ5imGzUfM_7UN6O5xwk&m=3DJT0pLpFmi=
VNTCKbUp1LFei6Pu_3fQPGwh9cESk1coqXMJlS_-DbXDzPYP1hsvJk3&s=3D19SbXfvkmN-YvqQ=
gJGrJbBi7L07V81Eaq7cIhLRkQaY&e=3D
> > =C2=A0). Once a virtual
> > screen is created, the artifacts should be visible while moving the
> > window around on that screen (see the attached picture or user
> > reports
> > mentioned earlier). Similar issue appears with devices using UDL
> > driver on Intel platform. Attached are device information files and
> > a
> > dmesg output when reproducing this issue.
>=20
> I had a glance at the github issue. First, "new Intel devices" is
> quite
> vague. Which devices exactly? 'lspci -vnn -d :*:0300'. Also we can
> see
> both i915 and xe drivers in some lsmod listings, but there's no info
> which drivers are being used with which devices. That's not
> actionable.
>=20
> Second, seems to me there are a lot of people having issues with
> non-Intel GPUs as well. What makes you say this is related to i915 or
> xe
> drivers?
>=20
>=20
> BR,
> Jani.
>=20
>=20
> --
> Jani Nikula, Intel

