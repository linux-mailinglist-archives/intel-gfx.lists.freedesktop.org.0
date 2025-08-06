Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4422BB1C5E9
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 14:34:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B41410E762;
	Wed,  6 Aug 2025 12:33:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="g4oOWZir";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9F8010E762
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Aug 2025 12:33:56 +0000 (UTC)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5766P5i6030765
 for <intel-gfx@lists.freedesktop.org>; Wed, 6 Aug 2025 12:33:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=8AHDD/NKlImoDbRQJz3VE6UP
 Fkw5sFqhveZWLWVU0jA=; b=g4oOWZir2+MXN+X30a5yhx6F2djWrkZxWQjdgTe+
 XPH93D1xKUiwkkMYYVEk0BQPf7Ciy+lEShcQWJk1DvBUgjT1+FvqJFO/v0IZFllx
 Hm1wVH72eEczY3hg+ZVS/FU9RHZcnfZv5/bgJMYqjk+0OKTI4vJqWLSa1nr0Fnx6
 KGlDvHpDdk0SSApByMt+IqW8M6+XEMStIcm2aVhOfdoIPwGgA6yCzMP21v1lnG1p
 prC75v7RiFn3dtKc8WhhiQ6aYlPLcFmk2aa6KSAXDNpsMck46INQffM0mA2mvlKL
 DTEx+WHAaBg6uLZolHx9XEGKlsm2S7ioUTdDoDuC+dSU/w==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com
 [209.85.217.71])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpyctm57-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 Aug 2025 12:33:55 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id
 ada2fe7eead31-4fc5fe7e675so1815002137.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 Aug 2025 05:33:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754483634; x=1755088434;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8AHDD/NKlImoDbRQJz3VE6UPFkw5sFqhveZWLWVU0jA=;
 b=jdNt7qCs1gp/ZHYyizz2nbmlMwj2LoXdUdbHmZarIXxYvY/3RyZ6UZE9Y4KMDIvPWL
 qBg5Yp3WvwNCbK5lAWQ9nA7XJDhaM6vDxEfcDVWx2zcerZKNZ04DcDWI8E/oUO492kK5
 6ZEkepRTW3aCC9UqUkoN/4baKJdE2iEvu6ZlgEsog0HMalbcLBMssJVyCZAJBtUloZSz
 NioOAqmQdI43+0abiYZV1ejodsgWkF5vPwpvzp3TL21PYcplJSg2lcc3SoRl4MQKXqeB
 iBWy2lniFlucGjGw36luTqZU8crw+vIF1599jg/DYLckcdidstimbng7MFzWvxj5m/vl
 yCSg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWw4igsNFEL+lIfXNYX5U3TqlaKDcyCr/F5vmPNbcA2lqvEPBu7PYB0VRaS0rx3YR1YrrQH+agUgi4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyCWnBEO3/6QdUutfrQiXcvXZ6oZrA9pLIUT3u2cu0dfsUJPvoG
 0/EFfcUiRv1lykVVS6WLTJDmuUoRMnbAMouJfjwlltqFuCDjWuYVR+oXbXqKtGhRE2adGFa2dZP
 0Q2Ojq0IsaZy1aIsIdMNGvsOFBIPuXOJy2vsNMPXi15HumiVGsTV9IPal+0YCF1MatBG13NA=
X-Gm-Gg: ASbGncuN/6nyj353HAmc0ECTxkCrtCFMYtG4d40u/XLXYPxDqvuMq1dHjRUN/LnANcT
 aVC68DznI2Gh0rfnQLX342DCmjONMo4QauZMI7XF08OMoM1cuBX3683yU3pLYAhXtEoSdO1wGj3
 QR8KyOBCOA1A2EE2m5kQTXl/xI3UX9yQrwr1If86i4VEe9/PwJe5l8ur/2zEVrDCV+JxrLzvoQ1
 QSAhO+fqE/fW+/Cw2yCa6HoyfIesD/HGkAhCRPhHkiuvLIal64BxLiBgYSIc3sjpXdKGTuZTtxI
 orSh75u0GA/vy+NuTfGEdOkP6Fe3XULIKaGEDrpK5ZBbO0OzLdjIPh1qcanMVYm4Yf7OsiWnDhb
 jg8MHLp8u2eoYVL7puqG+XFMd0Gf7iBsBs9mrAgS90vZaW2+2hicz
X-Received: by 2002:a05:6102:510e:b0:4e2:ecd8:a27 with SMTP id
 ada2fe7eead31-503722a411emr930590137.4.1754483634376; 
 Wed, 06 Aug 2025 05:33:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHNJX4tx8SpHG3lADuY3nNb7/BMPnvxP9KNmFPf+zkE8bPI7eisHRRpHKlq6+Dmvm+dlyGPlw==
X-Received: by 2002:a05:6102:510e:b0:4e2:ecd8:a27 with SMTP id
 ada2fe7eead31-503722a411emr930555137.4.1754483633745; 
 Wed, 06 Aug 2025 05:33:53 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-55b8898bde5sm2331438e87.3.2025.08.06.05.33.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Aug 2025 05:33:52 -0700 (PDT)
Date: Wed, 6 Aug 2025 15:33:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: "nicusor.huhulea@siemens.com" <nicusor.huhulea@siemens.com>
Cc: "imre.deak@intel.com" <imre.deak@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "cip-dev@lists.cip-project.org" <cip-dev@lists.cip-project.org>,
 "shradhagupta@linux.microsoft.com" <shradhagupta@linux.microsoft.com>,
 "jouni.hogander@intel.com" <jouni.hogander@intel.com>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "airlied@gmail.com" <airlied@gmail.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 "laurentiu.palcu@oss.nxp.com" <laurentiu.palcu@oss.nxp.com>,
 "cedric.hombourger@siemens.com" <cedric.hombourger@siemens.com>,
 "shrikant.bobade@siemens.com" <shrikant.bobade@siemens.com>
Subject: Re: [PATCH] drm/probe-helper: fix output polling not resuming after
 HPD IRQ storm
Message-ID: <n5qe3zmeekirddlt7hff2tgdyhe5bysaubwpndtmsqmkgyc4lq@2agvowbjuvuo>
References: <20250804201359.112764-1-nicusor.huhulea@siemens.com>
 <z4jxkrseavbeblgji4cnbyeohkjv4ar3mbbdvothao6abfu6nf@nqlhcegwtwzf>
 <aJIhCyP2mwaaiS22@ideak-desk>
 <DB3PR10MB69081B925B54BB906DAD0D20E62DA@DB3PR10MB6908.EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DB3PR10MB69081B925B54BB906DAD0D20E62DA@DB3PR10MB6908.EURPRD10.PROD.OUTLOOK.COM>
X-Proofpoint-ORIG-GUID: zncMHPSeQGHMKoFgHqbloN_Nkq7B3vYd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOCBTYWx0ZWRfXz1u51+brFBN2
 Qvb+L1e2XimpowCJRyjfamWcN8k60u0G5+nQGzwYpqrKbDAAGfBSdTjbIIqy+qZedpFa1Le9dnI
 AtrQJT3do3cYIqHuHmLb3P9jcbJSY9R31RWgruTdWbWSZczbjd7Rj650+iXAlgZ7JiUOt/7al4B
 5FgNDx5i1vdP5RDCdbuEwZn5OJsfCtpwNXli9Xsnk/Yk1u5fzHQ38AlyqU10O+J7dDmvlsxoCcP
 D5n9B7o0ZmmLq62E55p5qVC/jQixd0Kck+gf4exyXNDXVaF0lfUP5O4BBWiI7iNMST4rz9s0nLJ
 agTshfw0y92biY40irPrALwcxJ1fPxH7AcwgoBhvaoxH2mwIXcnEU6eIAxU2lv7IkQgdoOLpaUp
 f/4//GyF
X-Authority-Analysis: v=2.4 cv=JIo7s9Kb c=1 sm=1 tr=0 ts=68934bb3 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=a_U1oVfrAAAA:8 a=QyXUC8HyAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=e5mUnYsNAAAA:8 a=0Kn4FdKhAAAA:8 a=yMhMjlubAAAA:8
 a=KKAkSRfTAAAA:8 a=pGLkceISAAAA:8 a=8AirrxEcAAAA:8 a=oW7bPyNFJPXsfEDiif8A:9
 a=CjuIK1q_8ugA:10 a=ODZdjJIeia2B_SHc_B0f:22 a=Vxmtnl_E_bksehYqCbjh:22
 a=iYA3lCpbqa-fO8tTHbho:22 a=cvBusfyB2V15izCimMoJ:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-GUID: zncMHPSeQGHMKoFgHqbloN_Nkq7B3vYd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-06_03,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 bulkscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508060008
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

On Wed, Aug 06, 2025 at 12:02:02PM +0000, nicusor.huhulea@siemens.com wrote:
> 
> 
> >>-----Original Message-----
> >>From: Imre Deak <imre.deak@intel.com>
> >>Sent: Tuesday, August 5, 2025 6:20 PM
> >>To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> >>Cc: Huhulea, Nicusor Liviu (FT FDS CES LX PBU 1)
> >><nicusor.huhulea@siemens.com>; stable@vger.kernel.org; dri-
> >>devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; cip-dev@lists.cip-
> >>project.org; shradhagupta@linux.microsoft.com; jouni.hogander@intel.com;
> >>neil.armstrong@linaro.org; jani.nikula@linux.intel.com;
> >>maarten.lankhorst@linux.intel.com; mripard@kernel.org; tzimmermann@suse.de;
> >>airlied@gmail.com; daniel@ffwll.ch; joonas.lahtinen@linux.intel.com;
> >>rodrigo.vivi@intel.com; laurentiu.palcu@oss.nxp.com; Hombourger, Cedric (FT
> >>FDS CES LX) <cedric.hombourger@siemens.com>; Bobade, Shrikant Krishnarao
> >>(FT FDS CES LX PBU 1) <shrikant.bobade@siemens.com>
> >>Subject: Re: [PATCH] drm/probe-helper: fix output polling not resuming after HPD
> >>IRQ storm
> >>
> >>On Tue, Aug 05, 2025 at 01:46:51PM +0300, Dmitry Baryshkov wrote:
> >>> On Mon, Aug 04, 2025 at 11:13:59PM +0300, Nicusor Huhulea wrote:
> >>> > A regression in output polling was introduced by commit
> >>> > 4ad8d57d902fbc7c82507cfc1b031f3a07c3de6e
> >>> > ("drm: Check output polling initialized before disabling") in the 6.1.y stable
> >>tree.
> >>> > As a result, when the i915 driver detects an HPD IRQ storm and
> >>> > attempts to switch from IRQ-based hotplug detection to polling, output polling
> >>fails to resume.
> >>> >
> >>> > The root cause is the use of dev->mode_config.poll_running. Once
> >>> > poll_running is set (during the first connector detection) the calls
> >>> > to drm_kms_helper_poll_enable(), such as
> >>> > intel_hpd_irq_storm_switch_to_polling() fails to schedule output_poll_work as
> >>expected.
> >>> > Therefore, after an IRQ storm disables HPD IRQs, polling does not start,
> >>breaking hotplug detection.
> >>>
> >>> Why doesn't disable path use drm_kms_helper_poll_disable() ?
> >>
> >>In general i915 doesn't disable polling as a whole after an IRQ storm and a 2
> >>minute delay (or runtime resuming), since on some other connectors the polling
> >>may be still required.
> >>
> >>Also, in the 6.1.y stable tree drm_kms_helper_poll_disable() is:
> >>
> >>        if (drm_WARN_ON(dev, !dev->mode_config.poll_enabled))
> >>                return;
> >>
> >>        cancel_delayed_work_sync(&dev->mode_config.output_poll_work);
> >>
> >>so calling that wouldn't really fix the problem, which is clearly just an incorrect
> >>backport of the upstream commit 5abffb66d12bcac8 ("drm:
> >>Check output polling initialized before disabling") to the v6.1.y stable tree by
> >>commit 4ad8d57d902f ("drm: Check output polling initialized before disabling") in
> >>v6.1.y.
> >>
> >>The upstream commit did not add the check for
> >>dev->mode_config.poll_running in drm_kms_helper_poll_enable(), the
> >>condition was only part of the diff context in the commit. Hence adding the
> >>condition in the 4ad8d57d902f backport commit was incorrect.
> >>
> >>> > The fix is to remove the dev->mode_config.poll_running in the check
> >>> > condition, ensuring polling is always scheduled as requested.
> I'm not a full-time kernel developer, but I spent some time trying to really understand both the rationale and the effects of commit "Check output polling initialized before disabling."
> Here's how I see the issue:
> That commit was introduced mainly as a defensive measure, to protect
> drivers such as hyperv-drm that do not initialize connector polling.
> In those drivers, calling drm_kms_helper_poll_disable() without proper
> polling setup could trigger warnings or even stack traces, since there
> are no outputs to poll and the polling helpers don't apply.  From what
> I understand, the poll_running variable was added to prevent cases
> where polling was accidentally disabled for drivers that were never
> set up for it. However, this fix ended up creating a new class of
> breakage, which I have observed and describe here.


It was added to implement the very simple logic: If something isn't
initialized, enabling or disabling it is an error. If something isn't
enabled, disabling it is an error. If something isn't disabled, enabling
it is an error.

> 
> To me, the core logic should be simple: if polling is needed, then we should allow it to proceed (regardless of whether it's been scheduled previously).
> 
> Looking at the  drm_kms_helper_poll_disable()
> if (drm_WARN_ON(dev, !dev->mode_config.poll_enabled))
>     return;
> 
> If the driver never enabled polling (that is, drm_kms_helper_poll_enable() was never called), then the disable operation is effectively a no-op-totally safe for drivers like hyperv-drm.
> 
> And in the enable function drm_kms_helper_poll_enable(..):
>         if (drm_WARN_ON_ONCE(dev, !dev->mode_config.poll_enabled) ||
> -           !drm_kms_helper_poll || dev->mode_config.poll_running)
> +           !drm_kms_helper_poll)
>                 return;

Why?

> The main thing being guarded here is whether polling has actually been initialized:
> 1.For polling drivers like i915, removing poll_running from the enable path is both safe and necessary: it fixes the regression with HPD polling after IRQ storms

I believe in paired calls. If you want to use
drm_kms_helper_poll_enable(), it should be previously
drm_kms_helper_poll_disable()d. If you have manually disabled the IRQ,
it should also be manually enabled.

Pairing the calls makes life much much easier.

> 2.For non-polling drivers like hyperv-drm, the existing checks on poll_enabled in both enable and disable functions are sufficient. Removing poll_running doesn't affect these drivers-they don't go through the polling code paths, so no polling gets scheduled or canceled by mistake
> 
> Therefore based on my understanding and testing removing poll_running guard not only fixes a real bug but also does not introduce new regressions for drivers that don't use output polling.

-- 
With best wishes
Dmitry
