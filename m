Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE49EB1B236
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 12:47:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86EE410E646;
	Tue,  5 Aug 2025 10:47:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="UkUY+mZ/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B52410E646
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Aug 2025 10:47:01 +0000 (UTC)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5756SOXL017513
 for <intel-gfx@lists.freedesktop.org>; Tue, 5 Aug 2025 10:47:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=6MqyqJWNT+su2i0PV9Dq1jib
 VxeVp+m7xarMv4uNdaM=; b=UkUY+mZ/do5d/LOeZT1b2eMvT8zMlRbivn4pPtf2
 xKW49RajL0IVJr+uYEbm8YKJoiMB1JNYFQ4EeZ3r0dBt2eMq3r9r8fuj3eS+k8gK
 lizM3E10wX6NbggpEcTK5P696eHp4MmAirEPZH5ct9DdE9+8IjMaVSXePnxE7gVl
 572oFeV76r/uZKS65Lm4VMi5Xbv+oy1IkvjPDncpOKomjrhrSwXzxjGvgkAWHTJY
 gCp2U9U+5DKa3O5JjnCzGlQrcQi28ceZsHdQSIpb/rjmiwi/xIjvi7GDbzXoyKbg
 ubrNu6m6jN0O9efbc52gMHgAMpddcDDVA9oINLDznIU2Uw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 489byc85s2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Aug 2025 10:47:00 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id
 6a1803df08f44-70741fda996so70048266d6.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Aug 2025 03:47:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754390815; x=1754995615;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6MqyqJWNT+su2i0PV9Dq1jibVxeVp+m7xarMv4uNdaM=;
 b=NH4OpZRvhGwIpadN3SxRqjsl+j5Asajz0AG9XgXboheO6Ms7jiv+0FbU0/D0ZqivnB
 TEs0Ydj/u4BW8mqFMDNxTD3RKEtO86nmWCYCjRz0xbdU3rEleYoXWJsYZIY78BX4AzC+
 4+LzgaUV1YFM2Zq6GK0pz7/BB/qEyvmkKC0siCK51RTF0pTKL8y0+GI8L7nsE119QoH7
 kRbEKf5YHOXBvEb2b8dw8D3OR642tX2FW0xJnHhEJxynEHtgIarZJHDwH63VEE/SKDHz
 pV5Ko+NVKfXUVr/zre6wfuGxEsO/XArbRp32o1XdphAQDOnI8D3YHza4rQ2FfLH4GwoQ
 rgnA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVVoFI5G5+/go2beP7ba5kNLDlC+n8nqhQFDvXqaVJrOr6bx+oVvEpA966E7PJuCo+jh1H2HMjLYt0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxHgbTymTnzL6+YskTFSuzOpBSBsksQV6DgooAsnPAJpOWVI8cA
 sg7vF1hUU22bvcITdSRQKHmBUnxzII03e5McI8UBjEIShfpTlX+wnfJgw7DYSZzeDI5osHcBsRv
 vlIDJa6rP8DJxdpppTjMtzfJh9zJsYodMBOfAIuBREIcjh9Lwbyou3xZzuFsb/4/q7R1HBH4=
X-Gm-Gg: ASbGncvn7XxBGobRI8Gl9hjNRQodUUQV0NeZtq9oxSF37dmW7rZYeHudCXTP6TRhRmP
 tQjJoPWEozhnq7JSAyq7oL+715ayjM+4hZ730RwN4vF8dDV4jS1AVywV2ld835GZ/OCZ2QZvCbs
 yH/g4f601n98uGdhfkjdG/5k2JTOpcoCfjohSBWNKJVkC7tHw3XZ8hkJ7r6wfHqCJY7NIPij5L/
 KknoSZS53laC0doNwZzHYPD/fBhNL7sopntNZ+w9ntaVCkovD7LT9F9bJSaK5p3AA6e8n0c2mv1
 wXi5NaoJYMvrhI7mG+Vu6PBi5lhUX0IoX+AurKN09Mp+y67d/o4iN/qRjxZwOS+pqdtdqr7EFS+
 gfH/jFjbNa13o/d/RTRI7lrX4Rz4qD/JO1X6c7eyY0sbCvbdabp4N
X-Received: by 2002:a05:6214:762:b0:704:7b9a:8515 with SMTP id
 6a1803df08f44-70936313db4mr165964656d6.38.1754390814913; 
 Tue, 05 Aug 2025 03:46:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmShMkZ4kKSVeaIHraWH/PlAWlX7H2EEZv0YV6qAruKBuxlJC4H8uILodqhzr6oCtQ73Ww0w==
X-Received: by 2002:a05:6214:762:b0:704:7b9a:8515 with SMTP id
 6a1803df08f44-70936313db4mr165964346d6.38.1754390814481; 
 Tue, 05 Aug 2025 03:46:54 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-55b889ac71esm1875211e87.66.2025.08.05.03.46.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Aug 2025 03:46:53 -0700 (PDT)
Date: Tue, 5 Aug 2025 13:46:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nicusor Huhulea <nicusor.huhulea@siemens.com>
Cc: stable@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, cip-dev@lists.cip-project.org,
 shradhagupta@linux.microsoft.com, imre.deak@intel.com,
 jouni.hogander@intel.com, neil.armstrong@linaro.org,
 jani.nikula@linux.intel.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
 daniel@ffwll.ch, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, laurentiu.palcu@oss.nxp.com,
 cedric.hombourger@siemens.com, shrikant.bobade@siemens.com
Subject: Re: [PATCH] drm/probe-helper: fix output polling not resuming after
 HPD IRQ storm
Message-ID: <z4jxkrseavbeblgji4cnbyeohkjv4ar3mbbdvothao6abfu6nf@nqlhcegwtwzf>
References: <20250804201359.112764-1-nicusor.huhulea@siemens.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250804201359.112764-1-nicusor.huhulea@siemens.com>
X-Proofpoint-ORIG-GUID: QTfhqiBMuMVoCHh9YtkRu4UNFT26sYFe
X-Authority-Analysis: v=2.4 cv=Y6D4sgeN c=1 sm=1 tr=0 ts=6891e124 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=Lu6GMi6qvROXTdHYmRoA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: QTfhqiBMuMVoCHh9YtkRu4UNFT26sYFe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDA3OCBTYWx0ZWRfX+h3WTk9TZNXD
 8WbVsDxeuZqcYYzXtEri1YVffcq0mXz0m4aA682wqyqZmoXAV5t9LYYXrzmUgyx6hcxr9sfzMXW
 IzetxhC5t/kqQgRpCx8Wwons6AInR/l44cljIudTGway1IOOEpPQj3cqRzVczjSnk6vnpstcHyC
 BPbeYySdfKe47OCDtsvYuP27sNPyKeeBBRX+VTaDAUjBiGIXrdrcwwYfFoDQwwVAk0/G5n26D5x
 5A5Y0V6PuQy/aQ9F6c7y+Fgv6932GtW15ze+ZCJFoUgkUSoLWoIVo+U9C3S3ZD8Fwlf8bUqhAB5
 Ftt4/VpOxY1BELDfVK9EgvEEVWPXztoHFrnYhHS9EdCkRnaYd5+ITtKH/0mvD+mht3m7dDwgDi3
 6wH8IF0Fm6cNtVzj8GdROLIm3SYwoDEny/b0/JTCXHjuUyo5gnumYqFViBJ2v6EveIciHD1y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_03,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=999 suspectscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0
 priorityscore=1501 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508050078
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

On Mon, Aug 04, 2025 at 11:13:59PM +0300, Nicusor Huhulea wrote:
> A regression in output polling was introduced by commit 4ad8d57d902fbc7c82507cfc1b031f3a07c3de6e
> ("drm: Check output polling initialized before disabling") in the 6.1.y stable tree.
> As a result, when the i915 driver detects an HPD IRQ storm and attempts to switch
> from IRQ-based hotplug detection to polling, output polling fails to resume.
> 
> The root cause is the use of dev->mode_config.poll_running. Once poll_running is set
> (during the first connector detection) the calls to drm_kms_helper_poll_enable(), such as
> intel_hpd_irq_storm_switch_to_polling() fails to schedule output_poll_work as expected.
> Therefore, after an IRQ storm disables HPD IRQs, polling does not start, breaking hotplug detection.

Why doesn't disable path use drm_kms_helper_poll_disable() ?

> 
> The fix is to remove the dev->mode_config.poll_running in the check condition, ensuring polling
> is always scheduled as requested.
> 
> Notes:
>  Initial analysis, assumptions, device testing details, the correct fix and detailed rationale
>  were discussed here https://lore.kernel.org/stable/aI32HUzrT95nS_H9@ideak-desk/
> 

-- 
With best wishes
Dmitry
