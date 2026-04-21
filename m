Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kEPhE5dI52kh6QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 11:51:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F40E743920B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 11:51:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86E4E10E864;
	Tue, 21 Apr 2026 09:51:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="df7tAtBN";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="G9Pi5IR9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A34C10E844
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 09:51:14 +0000 (UTC)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63L6ePdd3574129
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 09:51:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 tNz2hyaIKunso93P6B5FzOeK7zMcpTMCwZPp1Ux4pv8=; b=df7tAtBNSOEWW4QV
 PYh+L9tHKd2hG80sD0WCzKbTf+PwkzNyMtQM+WUZnIb0bFLacmUhKm6B2Feg/owB
 zYAsr9IYG/aIzInS5zplrETdOCy4LmVtvnF8d9eho42WfPY0yoWjdY/S5eT9FZ9d
 PgwH4os3tew/ZaDiDZPe0hnMPXAXfKpNrG21DbT/lqS49asRON35kJKr1yLcVKqt
 BUcdXmgVeqNsc3g6lQn0vzl1boWOn3kG1CawRExKwexBL3XO8DniH0pMLIbYJNk4
 NQlY1Kg4KGs6NlJmdrH1KE28Tom4U/l3EZWmME3jkIkiaYw9kDeELJMnwiFpwRSA
 aBWquQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dp465gqk7-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 09:51:13 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id
 af79cd13be357-8eec753a7bdso8609185a.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 02:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776765073; x=1777369873;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=tNz2hyaIKunso93P6B5FzOeK7zMcpTMCwZPp1Ux4pv8=;
 b=G9Pi5IR9h49/9cYJGcWFykXGGg4fdAElWfS+8M97RMZU51GQZ7VIR+M4r7SW5Ay+hh
 AnjzRscsXUR3W3wknm/cjmhE5LmBn0+QOVjaSI79lrtWe7QemgAdj0Xuj3pMJ6XAizPv
 kbT0QyE/SG3CqjGfr/6TudcfCxOkBlRvKN8A2xWQNGviSJQj7DFuEDlg3iGC+vvZjAI9
 bXojLB6Tf6cvbXhPEt1dkMGGdSB/VGphl4Dy1nrOvVZ1O6SeH9G9YAJId8Lr2wYMV3Fh
 a7dEoEE4fQiRBAEfS9A8IekcMIidMen7H54bcxZfo1pu96zDs8u9BTXUri8s6CaZM23l
 j5YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776765073; x=1777369873;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=tNz2hyaIKunso93P6B5FzOeK7zMcpTMCwZPp1Ux4pv8=;
 b=krYAj07uFZrNF64PoQtWsk+iC20/9/9K/idPeVwVIExNC+tTclZo27lYY+3CYfZnQC
 dLJWq+616L5fdsUUnV+f+FUH2yb0goFrG8Ciwt3DKikZwaBts8gBrAlvKYe+IyLQIEIn
 MF31OwHpqfNYyQI3apROsdJ/8iI8gIRzovjmG6VY3//D5YUbL+v9WLxqxIIVdBqjN1OK
 ygV1nmIkw932lJ8BNIsJEk5Qy6pH4snz2GeFZ11dQE0iFcyXwmBDGeNmZkunDJmp0rqG
 gwis02QmV66awhLUbHAUNjM5RXjGgJazvM36+13nZWqr1iqq773dFOURbNjRzQGb7kYy
 lwxg==
X-Forwarded-Encrypted: i=1;
 AFNElJ8RWuyU4arOFxMN3yIfQqDaFDZksJAiDNdkwt8OM4bSjjeE9bMMKFd/gj9FcGOd+mLUBxmnSdp33cQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx+rPcX2CCugHX1i1NEhwhwedAo/6LRaV+Wvx1xh5W/E+fH5enA
 YDM8IAVDICr8WaMJOPCCjusuGig4GMFOVhoJzojZLjJ7waY5dq9jV7CLxU7kXnG1PhRsHby+jgv
 51aY4Vl7X6yj2/ZqwhACqgIOCJXpcQmGs86eO5Vt7eBeplHXVsstBa3yPnuX1rfNTmq4lSsI=
X-Gm-Gg: AeBDieuR7M0CKj1qAQ2ZvBvwOJ6BX/H9PkW2VWigdGmgND5OKUBACHGCj1fLHJ+zSBT
 kEDGb1lxPSr26WhfgUdsbkigJ0vbX+dTGoUU0OYg+cjwki3dvMpKUOt53lHL7U+YdUHsFNBn2ZP
 KzPkG2Mdzkx9fW2CpRwqe34lXZC8VU2q4nQ1iX5nHuYsjPPq4GWt7DcfD5QQLXVD7S/YntVSvXd
 OqweavBXuWwfmuNn+Xl9EF8kgPyB6mngAsRN/lPP9p/01CVjEPrQC7x8wZAKXIOI8ijYvuZKl7h
 4z1q6GITKm7ssjm0QMRPJOX7onWctiS1yxsbDEKi09PsSTSKFCWHW7sbgMQVi7SsjGFnkOxTApl
 6BpkgcWPxjBFgk+hBYn113wc03xym8bxZ9h9wS5L8ppoMp45Mxwg+PAzZEHRWZm6uinTxL2dp9C
 dkJjEAg3x1NovxlA==
X-Received: by 2002:a05:620a:2ae8:b0:8ea:c7a8:5065 with SMTP id
 af79cd13be357-8eac7a856ecmr572410285a.2.1776765072674; 
 Tue, 21 Apr 2026 02:51:12 -0700 (PDT)
X-Received: by 2002:a05:620a:2ae8:b0:8ea:c7a8:5065 with SMTP id
 af79cd13be357-8eac7a856ecmr572407185a.2.1776765072156; 
 Tue, 21 Apr 2026 02:51:12 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl.
 [78.88.45.245]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-672c480e22asm2692461a12.9.2026.04.21.02.51.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2026 02:51:10 -0700 (PDT)
Message-ID: <b340dec3-8c4b-49f6-89bd-61a8233bda2c@oss.qualcomm.com>
Date: Tue, 21 Apr 2026 11:51:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] soc: qcom: pmic-glink-altmode: pass down HPD_IRQ
 events
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Adrien Grassein <adrien.grassein@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov
 <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Pengyu Luo <mitltlatltl@gmail.com>, Nikita Travkin <nikita@trvn.ru>,
 Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org
References: <20260421-hpd-irq-events-v3-0-44d2bf40dfc2@oss.qualcomm.com>
 <20260421-hpd-irq-events-v3-5-44d2bf40dfc2@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260421-hpd-irq-events-v3-5-44d2bf40dfc2@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIxMDA5NSBTYWx0ZWRfX2LupO50LMYSg
 B8x+72b8F1WsMESASurgSD2+/FYcfybCnvnOwAYhKjyivMOFKqWAOuAXj4F/ZaRtaqquhzosDYs
 9wZtLIYtRxkExCNKZVMNj4JcUGGt34fCF5hoetKJ5crvwqa91YVwlTCgcA1qav81degZOp0oFQ3
 X8UuMgDDv0uldYQDu88H5gdIf6Mx/BSvWEZ6PMHri/H9DCFKo/aAfsZWuAI/yXdF8AeFy5A82aL
 iL/vEO/T9x3V0j6Pqiu1tKOdVzKESZyMXIFyzkS5jM/9iIeSjLIHcP8C31qBPq6582xQYvbiHiQ
 WjvRMve0ODXErS7DQmD/DRnaYixLWyISPZsMH59/U16Oy6SmGTqZ0GqAedzXpiWoUU5fCWmOhs2
 dxfvFYsYenNfYW0SpGne8ZhFSKF/piPjTxjNM8CCRa3zHuz0SC9hJd+3ArFQuyaCXlhZNtfo+tW
 T+GrdxyjZfDXnPLC2Og==
X-Proofpoint-ORIG-GUID: fhuLN8scm7jGkgPifV6EP46fGl88Klvp
X-Authority-Analysis: v=2.4 cv=YOSvDxGx c=1 sm=1 tr=0 ts=69e74891 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=KAErmEmBofBSjU3YeWYA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: fhuLN8scm7jGkgPifV6EP46fGl88Klvp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-21_02,2026-04-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1011
 spamscore=0 impostorscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604210095
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
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:heikki.krogerus@linux.intel.com,m:gregkh@linuxfoundation.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:adrien.grassein@gmail.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:robin.clark@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:sean@poorly.run,m:marijn.suijten@somainline.org,m:tomi.valkeinen@ideasonboard.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:mitltlatltl@gmail.com,m:nikita@trvn.ru,m:yongxing.mou@oss.qualcomm.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-u
 sb@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:linux-amlogic@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:freedreno@lists.freedesktop.org,m:jernejskrabec@gmail.com,m:adriengrassein@gmail.com,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[43];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linuxfoundation.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,ursulin.net,baylibre.com,googlemail.com,linux.dev,poorly.run,somainline.org,trvn.ru];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,qualcomm.com:dkim,qualcomm.com:email]
X-Rspamd-Queue-Id: F40E743920B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/21/26 1:33 AM, Dmitry Baryshkov wrote:
> Pass IRQ_HPD events to the HPD bridge, letting those to be delivered to
> the DisplayPort driver.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad
