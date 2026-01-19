Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F416FD3BB87
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 00:09:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C971710E344;
	Mon, 19 Jan 2026 23:09:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="myg/cbjP";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ijr9BBX6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DEF810E0B1
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jan 2026 23:09:41 +0000 (UTC)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 60JIoobg2966239
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jan 2026 23:09:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=y7pTPfUH6iVzqZGYdTEFNi2K
 I6ZRLfJ8c6TQ1mSDQ68=; b=myg/cbjPvoXM6VUgMkCT6HnLHMrhpB5Z096hKCnQ
 P+LihECyI+10WkWLhns7DQP5Ctnfivr7GBZn7ZGmaebgZ6kqarQGjBYHz41HGfWt
 1nfoIHg721ELeXWhg7v3mXPT2gKhrD1mRFvvhJ4OV3+wdbRxKNWbtc2IkOOt4g/V
 6tkvhZWzvUQf6J2mAGab/7P0gszsTDXUQxjYi04sIHhP67GsPsYBOHEkuOXZ8w7E
 G0ntrrCOlws3JegwM3SgtuRjagHqNTd4NMmUXgpo3Rb8i0EP0sTE+s8xuLPJzBYs
 XbboYxkqn74CQ8F+lasKY6HSyxnnG4098Y+CXKycliW3Bw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsjaa9y00-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jan 2026 23:09:40 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-89463017976so962836d6.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jan 2026 15:09:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1768864179; x=1769468979;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=y7pTPfUH6iVzqZGYdTEFNi2KI6ZRLfJ8c6TQ1mSDQ68=;
 b=ijr9BBX6rigZn7eIRvSFFclIXazNrtrqeqXnhg9IBw5TXIzOG+tVMB4oa00mEJZvMh
 uZCgccupm2vDkbVguE+/mGAc6kjmqM1DzBzX0t+iKeG9cxEgCZJDLIDsDMYX8HpPACsH
 +wA3DztvMjRGQieYtyspDL80pD8R7dxulZ9bCwuX9xyL+rjyYpOsfobMClo2EOA05ArX
 vIHMO6GeV3ABpPmyjlJXDyjTqN+/j+rmRm0K7tqGzGpM/kJw/BFMWJj352boVnRbGv0a
 NJ/uy1KjKuG01npNAraXUNjRGNxve4S7wDKgoZraoiq3BmLoPw7GxXSfS8lbFwjuC7CY
 ms3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768864179; x=1769468979;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=y7pTPfUH6iVzqZGYdTEFNi2KI6ZRLfJ8c6TQ1mSDQ68=;
 b=kBcbA1wYHkMFuqyj/5CjnPAvDhTq89iZc8SsqDsGOmmpB9ymcxxrXAFN0VHXuYeOLv
 zU7XhWVOAUFAmuu7VEOU7vZAUvqRbNatv/WxcdQLSK7UWchPlvn4NNj//WnQVC+ohg4I
 n/WBGEhvpDeZx+2vxq6p/zhAVgCXdhECGgqxwX6MJwz6AT9An2icWlu7w/wHohHz6/E1
 LpnNEtWwgWRRCMf68EuZQNVzMU6KYPjsD7lZAn53anRDLpP12tohJBmJ2OCRHaEkUUTv
 BtgRSQKTfTmGbbciv/YBd2/fZtIoNsZeNn8iikNK2rBLfeih+Mk1XwW4smKWCCfYVzxN
 nJ6w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVtm7CqWoC3NACxZu2jrX+R8yJm3huSN5JivlKGPR9jfckuooE8Ue1Lkk364yXjPuhLYn0NPV/xhqs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx0JL33s1etoaokiSpzBkbGdLL9t5qOoJT+2WF5ltii8B9A0pwj
 eUrJwGnqW5L3mI+wUCUB2e8HMjLyPUbqRFkyxq5cwviIVwHBPw0iZaOGmw15WSOEd/thfLqhCXH
 RyvjgSugSjW24kXxzAAKvaDpbrqG1oo/br+tOhyjB+gaqoOSWQBPBWRLECDuGhoq1a0JNXeQ=
X-Gm-Gg: AZuq6aLfq7fmlOo5rF/oacbzr8gU4eQQZqzzq8ZkfYv8geSrM81oe2wJi1EL0tW6HEv
 SpGtOHhuNRXZ72XLk/x0w1ht3MeNQxw4WH6ZgoiPa5uMftYikox/gNsiWmLCrQdknYnDEf2xrjr
 I9KZUf0bLyaYMuhK57v7Qu5iZdjA1VKBRUCAekwxJ1Y9QBGhmVzlTV0uX9XB93uZupachBYQEhb
 QuAnnz8P9PdEwOezHVvr8MwVRLBLboJPxqBe+Ow/Xdoh64iiIg99eINFkkbDlGHQpGHAKZJEoEr
 Ar+57cRYw0h6Y36UgEkL6xh51br7u0lGgfROrIzZBZqqbYGwNmuRu8MaZhG4D3vt/Jbfvw17eFq
 owOF9h7y7ak33qt8P5E2QcTWYwQOnuboS+8JaV/poMh8hc61nyn4DpXY1KKOipTTP5czGmsQX1q
 4rbXQakHcrJWF1OZTFbFBD0jQ=
X-Received: by 2002:ad4:596f:0:b0:880:5193:1102 with SMTP id
 6a1803df08f44-8942e4ca766mr189035736d6.56.1768864179410; 
 Mon, 19 Jan 2026 15:09:39 -0800 (PST)
X-Received: by 2002:ad4:596f:0:b0:880:5193:1102 with SMTP id
 6a1803df08f44-8942e4ca766mr189035436d6.56.1768864178937; 
 Mon, 19 Jan 2026 15:09:38 -0800 (PST)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-59baf3a17dcsm3686254e87.89.2026.01.19.15.09.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Jan 2026 15:09:36 -0800 (PST)
Date: Tue, 20 Jan 2026 01:09:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mark Brown <broonie@kernel.org>
Cc: Simona Vetter <simona.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maxime Ripard <mripard@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: Re: linux-next: build failure after merge of the drm-misc tree
Message-ID: <g6tcsjmc27jafnfwbyltlq7lhbldcdlfbf4qiqwrnp6iyndk3o@lrcnxz5ud27b>
References: <aW5r7NzicgqvpaUj@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aW5r7NzicgqvpaUj@sirena.org.uk>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDE5NCBTYWx0ZWRfXxrsJ87GWhtw3
 SoW7nvEraFnhJAXWmEaVFpv8VL43cRvJoIqoJVHbZykBa3bvJ0PQwq054SAfJXSXRJlcjHSV06e
 uZ6CrrvBc3frdlhSLvqJrUFDQ+BewA/IG4abf7S0STrD3KAqishbsTLBAM/bz3ZfcvXKD7sY9xE
 BtZWhHwcCGNAHOvC2wxfTbq5k3raUAjnrW7LVIvPWdwCg/IKANrk3WQTS1jmIlkVa1yHlYMrn/l
 6y19VLp7HHk6dSKqkU/G71gFcP17wy61bT7pTv0BoGiPYICaGf1yID3uSIZoKh0p/pE1lp2KfGa
 oeilFg5aC56jJC4ZbrdLd8aMsTTHTjSNGIy3mll94lOHIiHjhTRUdgQpYvxcgCAeA3NycSs66Or
 23ucm4LKIC862aigLXdMsoZu7qzbrB1GSg4lVCr2jZTYkIeFqmc//DvL3f2Ww8nlldW9bBCn8ae
 wHfpXVwnFT51gp6Kt5Q==
X-Proofpoint-ORIG-GUID: dXEzpF4EwlKedSNJnN7QIkly7ArSVdKr
X-Proofpoint-GUID: dXEzpF4EwlKedSNJnN7QIkly7ArSVdKr
X-Authority-Analysis: v=2.4 cv=L8gQguT8 c=1 sm=1 tr=0 ts=696eb9b4 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=grscYz08w_xL7T5cvToA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_06,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0 spamscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190194
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

On Mon, Jan 19, 2026 at 05:37:48PM +0000, Mark Brown wrote:
> Hi all,
> 
> After merging the drm-misc tree, today's linux-next build (x86_64
> allmodconfig) failed like this:
> 
> /tmp/next/build/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c: In function 'drm_test_check_reject_hdr_infoframe_bpc_10':
> /tmp/next/build/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c:2926:49: error: passing argument 6 of 'drm_property_replace_blob_from_id' makes integer from pointer without a cast [-Wint-conversion]
>  2926 |                                                 &replaced);
>       |                                                 ^~~~~~~~~
>       |                                                 |
>       |                                                 bool * {aka _Bool *}
> In file included from /tmp/next/build/include/drm/drm_connector.h:33,
>                  from /tmp/next/build/include/drm/drm_modes.h:33,
>                  from /tmp/next/build/include/drm/drm_crtc.h:32,
>                  from /tmp/next/build/include/drm/drm_atomic.h:31,
>                  from /tmp/next/build/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c:7:
> /tmp/next/build/include/drm/drm_property.h:287:47: note: expected 'ssize_t' {aka 'long int'} but argument is of type 'bool *' {aka '_Bool *'}
>   287 |                                       ssize_t max_size,
>       |                                       ~~~~~~~~^~~~~~~~
> /tmp/next/build/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c:2922:15: error: too few arguments to function 'drm_property_replace_blob_from_id'
>  2922 |         ret = drm_property_replace_blob_from_id(drm,
>       |               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> /tmp/next/build/include/drm/drm_property.h:282:5: note: declared here
>   282 | int drm_property_replace_blob_from_id(struct drm_device *dev,
>       |     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Caused by commit
> 
>    7436a87db99d5 (drm/tests: hdmi: check the infoframes behaviour)
> 
> interacting with
> 
>    ca59e33f5a1f6 (drm/atomic: add max_size check to drm_property_replace_blob_from_id())
> 
> I have applied a fixup:

This fixup is correct. I've sent a formal patch,

https://lore.kernel.org/all/20260119-fix-kunit-infoframe-v1-1-5f2f9b066594@oss.qualcomm.com/

> 

-- 
With best wishes
Dmitry
