Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF34A70385
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 15:22:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3315F10E585;
	Tue, 25 Mar 2025 14:22:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="TO/ZQV6Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8231510E581
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Mar 2025 14:22:00 +0000 (UTC)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52PDG7aP002939
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Mar 2025 14:22:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 Kp3yGWdT4AV6kkrdyjO2FJdT8nOV4kJcKTIpcQc7Pgs=; b=TO/ZQV6ZSOOIQO6/
 EtuY3avalnKyKRDIYJ5L4diQO64ei0GCwfEGLTRLRfVAUZ/dzhogZfZsGwr9LOfG
 6TsfxYd6uqNSrVZNUlLTFuv07jCOec/l3ioo50XpUDWxWIYIRkN7L3dr850X+yIj
 HNHk3Gu+WKCv8y5y1u+nxfPs/LGlnGX5jev1//5a2WihdrtiE8NxMe1Blu7DCzR1
 am8P3+vZrj7jB6YzVh40dx/1uVJIwXjjB4hDQKb5Dx190G4OrLdmfaSNIRlfSgM8
 7HORa5z9tbLv2cqroJ8L3F7PUPAVoqWOGQp3NkI4MSprpbK3KVzwcDLasnSUFOLz
 ygOT8w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45kmd4hurx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Mar 2025 14:21:59 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id
 af79cd13be357-7c3c5e92d41so945589585a.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Mar 2025 07:21:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742912518; x=1743517318;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Kp3yGWdT4AV6kkrdyjO2FJdT8nOV4kJcKTIpcQc7Pgs=;
 b=awTbxNGVKa1SNbTz4pyfv012WuDUCFgqISj1nzen4YWfI0XHf4GvhmU6/nJXQol9Bn
 thLoJojbK/U2ydWNfgO2tH+x2jBsVZMbcijgLqgbLEyCTdJoaAEH/j0HRtbberqW+HyV
 r0cbgLDhStuNIIygYc2ZgnV0Ed3URhNj3SCSUwhK2jkKyBhJTXkvGKdzE5CtaLjHU4kw
 idmnF+tyu9QKPIkP0FEnp79wQOGiuZ44YnoWPm/ed34HzEK048x9C0Xv21LDaBgWzxkI
 a8zjksyA6Dsal3IlazvNJHxJKzEKhc10Q8GQXuzzKep7mO4AbSscAAB5nwvA+avE368g
 4rAg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUK486tnuL85A53kiki+XMyoOBw0mqxcXsIb6meyIbFJVMOjnPieCfamr+wRKdzA48+yfPTpxD5GUg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxMCWn2KzWgvjOyFQc8LMh6kFM0i9R1Q5cfzf42vwZcPHQrhLQn
 7ZgitUZFt+uK8yd0k0dCPy6n5c2tDggUOwJQi1VaYwjuMSXqL2bVYBQIaxXVBdgojrU+FCe6rbB
 SiTBmPx84zdp7ROR7jOLSt48pW10GZYtY1Dv9Uuq6qVfyh2M2+SZ8+ta7RA1gnumZVtM=
X-Gm-Gg: ASbGncvQhgzK7Pdt3hZs9bFJaj9rsylANGzorAOjd+aTcj7kjakYeBHcUL9h3BtJAgL
 WDEQb9h/DWxwrq1CXsJje0d5AntAkcb8Cnghs8Tj1ja+WvgiE21qeI3ik/pXO78d1dEy+9wNsz4
 bQq9I3s4kNnhi4cEkvX0xDFBIRcyEycwhHlvFTANvrceEr22bPfmg6r/bOWwSnnVR4ODLnPUweq
 CIlHPfG8h8bgoBCbtH5jjGyu5x5GHwGnnWLMqL76sWX9zLqczFInNY9BCH9PPrZckQ6AqZAvQuG
 lsafsZWx5eWFdUDstPjpHPVIwba+G2r48n9TZAuSht0bzmZxE4x3oY3tzBhZIVuPQLg=
X-Received: by 2002:a05:620a:4082:b0:7c5:4194:bbcc with SMTP id
 af79cd13be357-7c5ba1a5851mr2078812585a.29.1742912518302; 
 Tue, 25 Mar 2025 07:21:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHE3gf2K5kIjZtYjJH4qhQtLNFCQgnGxwMyKEgZu4Q/N9eWpJ5iD6eXdGIpzuGP7y89fDMGrg==
X-Received: by 2002:a05:620a:4082:b0:7c5:4194:bbcc with SMTP id
 af79cd13be357-7c5ba1a5851mr2078805785a.29.1742912517757; 
 Tue, 25 Mar 2025 07:21:57 -0700 (PDT)
Received: from eriador.lan (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00::7a1]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-54ad65083e4sm1508348e87.171.2025.03.25.07.21.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Mar 2025 07:21:56 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Lyude Paul <lyude@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Xinliang Liu <xinliang.liu@linaro.org>, Tian Tao <tiantao6@hisilicon.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Yongqin Liu <yongqin.liu@linaro.org>, John Stultz <jstultz@google.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Jani Nikula <jani.nikula@intel.com>
Subject: Re: [RFC PATCH RESEND v4 0/6] drm/display: dp: add new DPCD access
 functions
Date: Tue, 25 Mar 2025 16:21:55 +0200
Message-ID: <174291251084.2000243.209850835590674876.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250324-drm-rework-dpcd-access-v4-0-e80ff89593df@oss.qualcomm.com>
References: <20250324-drm-rework-dpcd-access-v4-0-e80ff89593df@oss.qualcomm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: WN8uE9MUIdjrNuZIQA-9Z6PhT4VlNpng
X-Proofpoint-GUID: WN8uE9MUIdjrNuZIQA-9Z6PhT4VlNpng
X-Authority-Analysis: v=2.4 cv=QLZoRhLL c=1 sm=1 tr=0 ts=67e2bc07 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Vs1iUdzkB0EA:10 a=DZoDOQWOqP-ft6bgs5oA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-25_06,2025-03-25_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 phishscore=0
 mlxlogscore=999 mlxscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503250101
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

On Mon, 24 Mar 2025 13:51:18 +0200, Dmitry Baryshkov wrote:
> Existing DPCD access functions return an error code or the number of
> bytes being read / write in case of partial access. However a lot of
> drivers either (incorrectly) ignore partial access or mishandle error
> codes. In other cases this results in a boilerplate code which compares
> returned value with the size.
> 
> As suggested by Jani implement new set of DPCD access helpers, which
> ignore partial access, always return 0 or an error code. Implement
> new helpers using existing functions to ensure backwards compatibility
> and to assess necessity to handle incomplete reads on a global scale.
> Currently only one possible place has been identified, dp-aux-dev, which
> needs to handle possible holes in DPCD.
> 
> [...]

Applied to drm-misc-next, thanks!

[1/6] drm/display: dp: implement new access helpers
      commit: d8343e115658fb35115e0720f4761ffa0147329a
[2/6] drm/display: dp: change drm_dp_dpcd_read_link_status() return value
      commit: fcbb93f1e48a150159534a1e6ec19e6fdf9196df
[3/6] drm/display: dp: use new DCPD access helpers
      commit: af67978ee37e543e62d6d3f7eba58f8f259423a7
[4/6] drm/display: dp-cec: use new DCPD access helpers
      commit: 97f37939881327e118d6252289973c186377a075
[5/6] drm/display: dp-mst-topology: use new DCPD access helpers
      commit: 2554da0de3e8312c7149d03d702ddc6c1ff5e3de
[6/6] drm/display: dp-tunnel: use new DCPD access helpers
      commit: 95c4ea2e0329b370a53a041a19227f8da3f47481

Best regards,
-- 
With best wishes
Dmitry

