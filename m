Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BD788A3ED
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 15:15:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8F3710E90D;
	Mon, 25 Mar 2024 14:15:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="enDOKQbu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEB5C10E90C
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 14:15:10 +0000 (UTC)
Received: by mail-qk1-f181.google.com with SMTP id
 af79cd13be357-789e83637e0so282685585a.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 07:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1711376109; x=1711980909;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=COUKaK9QwWldaIvCztGeS1zsFehu8RXDmIJB95LB/cQ=;
 b=enDOKQbuVwsdJkgyR82aZj86XoI/qPpGsFUMVYLAMPUWTLtUyVraoHur/Ajr43YmMx
 1dLqhGva3D0SC5tj6gs60c8ax8wE2YDZXnuu6F4ptKA+19rf5UWPN2MTCqJQr3FVj0Wl
 rVNerKrd2N62H+54ya5GWjitKDPjDQd/43tdo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711376109; x=1711980909;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=COUKaK9QwWldaIvCztGeS1zsFehu8RXDmIJB95LB/cQ=;
 b=mmiOtidcPNYpa0HdnialtC11R06tgIIU+h9RegDlIJtHm5DpcmoKixLRnr9ALN1WXe
 KNapPGNXvN8+i9JPa06zc97vj7siIcnza8fy5I7RhXZiWvgkA2nWtwfK+s7TaaeaSWJY
 itVJwUmOgoUjpbi4ABFAGPMXEBcO/qfWs3JnlNuNT3fNLBEq43JAApDAG6WUmHnAGMc6
 iUBQ8zbfQPCBBd5PUd/MnKCXpIx8HR6mPMFD9Wn7iCEavMHfSz1a+K7km5985+DknwCL
 S0IupjwzjpEG4ftlxS/xtSX3msP3RkWyR5y1jwcfpgRBaSuRsUd3mweMVbRy44+/MTRx
 Z20g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWlNWBsvZh/knqM09vSX18K8GWet5DmQYFXw4AKww9W6U5XurLfL+MEpLH+YCDHWeVBeISwFkZ8ENHkip9iWiB8cNa3SJemfvW26z8pBV8S
X-Gm-Message-State: AOJu0YxVC1+XnA7r8M2DmS1UigBbq2fiBADw8mLrAoHcU72m+JjpkPaL
 vU4Yjf29fEDLRgMQWj2nmQb4dlNWkW3I2IdaBVsOu+Nh6cJmHuDjDVU32qCJGntDYGbO7Fofz6k
 =
X-Google-Smtp-Source: AGHT+IH15XLgVJX8HB1AmdJfWHEoaC8LLy01/vaK6R8ypuwC54UVzxhY4stL2nUCH66A3t4ciyx1pw==
X-Received: by 2002:a05:6214:1cc1:b0:690:d4e9:fc5b with SMTP id
 g1-20020a0562141cc100b00690d4e9fc5bmr7142494qvd.27.1711376108734; 
 Mon, 25 Mar 2024 07:15:08 -0700 (PDT)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com.
 [209.85.160.169]) by smtp.gmail.com with ESMTPSA id
 iw9-20020a0562140f2900b006968de8fca8sm1155335qvb.5.2024.03.25.07.15.07
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Mar 2024 07:15:07 -0700 (PDT)
Received: by mail-qt1-f169.google.com with SMTP id
 d75a77b69052e-428405a0205so485791cf.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 07:15:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCVd0L2rmyFG37vDnULh2sdLjvExj5lLH3jNCylHA2jlCRNsSJ1rlZJK/Pb9nYZVT0gY4raPo8rJ8tvI8HEakThUAFk//HWlycQblV1DwRU2
X-Received: by 2002:a05:622a:2444:b0:431:4e0b:d675 with SMTP id
 bl4-20020a05622a244400b004314e0bd675mr354653qtb.18.1711376106720; Mon, 25 Mar
 2024 07:15:06 -0700 (PDT)
MIME-Version: 1.0
References: <202403240115.1lAo588s-lkp@intel.com>
In-Reply-To: <202403240115.1lAo588s-lkp@intel.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 25 Mar 2024 07:14:50 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V91x_Vf=rkT_Q29eTsa13XDKZHXYYgX1of3JsE2OgxHQ@mail.gmail.com>
Message-ID: <CAD=FV=V91x_Vf=rkT_Q29eTsa13XDKZHXYYgX1of3JsE2OgxHQ@mail.gmail.com>
Subject: Re: [drm-tip:drm-tip 4/11]
 drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c:105:73:
 error: '.bin' directive output may be truncated writing 4 bytes into a region
 of size between 2 and 31
To: kernel test robot <lkp@intel.com>,
 Saleemkhan Jamadar <saleemkhan.jamadar@amd.com>, 
 Veerabadhran Gopalakrishnan <Veerabadhran.Gopalakrishnan@amd.com>,
 Leo Liu <leo.liu@amd.com>
Cc: oe-kbuild-all@lists.linux.dev, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Hi,

On Sat, Mar 23, 2024 at 10:15=E2=80=AFAM kernel test robot <lkp@intel.com> =
wrote:
>
> tree:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
> head:   657dd8fcd2f1d1205c6f98fdb8b60915228991d1
> commit: 0885186926a13c697d78f5af03f32445414b6ad5 [4/11] Merge remote-trac=
king branch 'drm-misc/drm-misc-next' into drm-tip
> config: microblaze-allmodconfig (https://download.01.org/0day-ci/archive/=
20240324/202403240115.1lAo588s-lkp@intel.com/config)
> compiler: microblaze-linux-gcc (GCC) 13.2.0
> reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archi=
ve/20240324/202403240115.1lAo588s-lkp@intel.com/reproduce)
>
> If you fix the issue in a separate patch/commit (i.e. not just a new vers=
ion of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202403240115.1lAo588s-lkp=
@intel.com/
>
> All errors (new ones prefixed by >>):
>
>    drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c: In function 'amdgpu_vcn_early=
_init':
>    drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c:102:66: error: 'snprintf' outp=
ut may be truncated before the last format character [-Werror=3Dformat-trun=
cation=3D]
>      102 |                 snprintf(fw_name, sizeof(fw_name), "amdgpu/%s.=
bin", ucode_prefix);
>          |                                                               =
   ^
>    drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c:102:17: note: 'snprintf' outpu=
t between 12 and 41 bytes into a destination of size 40
>      102 |                 snprintf(fw_name, sizeof(fw_name), "amdgpu/%s.=
bin", ucode_prefix);
>          |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~
> >> drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c:105:73: error: '.bin' directiv=
e output may be truncated writing 4 bytes into a region of size between 2 a=
nd 31 [-Werror=3Dformat-truncation=3D]
>      105 |                         snprintf(fw_name, sizeof(fw_name), "am=
dgpu/%s_%d.bin", ucode_prefix, i);
>          |                                                               =
          ^~~~
>    drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c:105:25: note: 'snprintf' outpu=
t between 14 and 43 bytes into a destination of size 40
>      105 |                         snprintf(fw_name, sizeof(fw_name), "am=
dgpu/%s_%d.bin", ucode_prefix, i);
>          |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    cc1: all warnings being treated as errors
>
>
> vim +105 drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c
>
> 95d0906f850655 Leo Liu            2016-12-21   93
> 69939009bde70c Mario Limonciello  2022-12-28   94  int amdgpu_vcn_early_i=
nit(struct amdgpu_device *adev)
> 69939009bde70c Mario Limonciello  2022-12-28   95  {
> 69939009bde70c Mario Limonciello  2022-12-28   96       char ucode_prefix=
[30];
> 69939009bde70c Mario Limonciello  2022-12-28   97       char fw_name[40];
> 6a7cbbc267c0ca Saleemkhan Jamadar 2024-03-06   98       int r, i;
> 69939009bde70c Mario Limonciello  2022-12-28   99
> 6a7cbbc267c0ca Saleemkhan Jamadar 2024-03-06  100       for (i =3D 0; i <=
 adev->vcn.num_vcn_inst; i++) {
> 69939009bde70c Mario Limonciello  2022-12-28  101               amdgpu_uc=
ode_ip_version_decode(adev, UVD_HWIP, ucode_prefix, sizeof(ucode_prefix));
> 69939009bde70c Mario Limonciello  2022-12-28 @102               snprintf(=
fw_name, sizeof(fw_name), "amdgpu/%s.bin", ucode_prefix);
> 6a7cbbc267c0ca Saleemkhan Jamadar 2024-03-06  103               if (amdgp=
u_ip_version(adev, UVD_HWIP, 0) =3D=3D  IP_VERSION(4, 0, 6) &&
> 6a7cbbc267c0ca Saleemkhan Jamadar 2024-03-06  104                       i=
 =3D=3D 1) {
> 6a7cbbc267c0ca Saleemkhan Jamadar 2024-03-06 @105                       s=
nprintf(fw_name, sizeof(fw_name), "amdgpu/%s_%d.bin", ucode_prefix, i);
> 6a7cbbc267c0ca Saleemkhan Jamadar 2024-03-06  106               }
> 69939009bde70c Mario Limonciello  2022-12-28  107
> 6a7cbbc267c0ca Saleemkhan Jamadar 2024-03-06  108               r =3D amd=
gpu_ucode_request(adev, &adev->vcn.fw[i], fw_name);
> 6a7cbbc267c0ca Saleemkhan Jamadar 2024-03-06  109               if (r) {
> 6a7cbbc267c0ca Saleemkhan Jamadar 2024-03-06  110                       a=
mdgpu_ucode_release(&adev->vcn.fw[i]);
> 6a7cbbc267c0ca Saleemkhan Jamadar 2024-03-06  111                       r=
eturn r;
> 6a7cbbc267c0ca Saleemkhan Jamadar 2024-03-06  112               }
> 6a7cbbc267c0ca Saleemkhan Jamadar 2024-03-06  113       }
> 69939009bde70c Mario Limonciello  2022-12-28  114       return r;
> 69939009bde70c Mario Limonciello  2022-12-28  115  }
> 69939009bde70c Mario Limonciello  2022-12-28  116
>
> :::::: The code at line 105 was first introduced by commit
> :::::: 6a7cbbc267c0cafa2b027983a40276deb673c066 drm/amdgpu/vcn: enable vc=
n1 fw load for VCN 4_0_6
>
> :::::: TO: Saleemkhan Jamadar <saleemkhan.jamadar@amd.com>
> :::::: CC: Alex Deucher <alexander.deucher@amd.com>

Not quite sure why this came to me and not the people involved with
that commit. Adding them here.

-Doug
