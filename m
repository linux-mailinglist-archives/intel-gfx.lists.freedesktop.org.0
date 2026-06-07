Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CgB6I7LjJWrXNAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 07 Jun 2026 23:33:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A398651ABC
	for <lists+intel-gfx@lfdr.de>; Sun, 07 Jun 2026 23:33:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=ed2MZhcP;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=BMumt7rZ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9728510E67F;
	Sun,  7 Jun 2026 21:33:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A48AA10E681
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jun 2026 21:33:35 +0000 (UTC)
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 657JMC09927092
 for <intel-gfx@lists.freedesktop.org>; Sun, 7 Jun 2026 21:33:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 HhevlY6dk/ftxvio6CBL6QbAFSSp/a5ngu9s7xr+zgc=; b=ed2MZhcPR3ZJGhm5
 +YO16MmNxuN+dCsrIyoX0dbNtKYdE+mXIeUFaI5m4tL/8sC4JDvTHIF+iI/ZKfTy
 5tuPR0kjUDFAN4M/bj01EFAbZmD1vXgW33IHtqdLaKD8+Og9HFpTiEPk6p2rhC3e
 k2QsiU8LYLCa3Uh52T1+5W09iLZykr+H/ckInlthHNkXhnAD7TMu95/MsU7TO+2H
 ka6I5kIsqe4BprbPkA3vl05DmALsf5IyHe1zEyVd6pK1cyEgQY1P1P2Obs57PNDE
 f0NkV/UYxpwp29Ibe4Qt7TgTH/q1wyqQb7nmlqPwWrefKljAe2zwI+rDAhy4Fzcl
 VjPJvg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4emcadvhuq-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sun, 07 Jun 2026 21:33:35 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id
 d75a77b69052e-5177bddf6e0so92550301cf.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 07 Jun 2026 14:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1780868014; x=1781472814;
 darn=lists.freedesktop.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=HhevlY6dk/ftxvio6CBL6QbAFSSp/a5ngu9s7xr+zgc=;
 b=BMumt7rZG8sBo7RTuqz8DRF21Cz7vbc930KqHBfQv9jhCKaUvw72tGxK2bqh0w0s8T
 y4+o2tiprEcIcbZBmkYRRY3JO3N1HXuEVPqHEIKwvbqjJI+66ILcB8pROUvLp7pqx7bY
 7bhQ2dFr1Druw4rtRI5miswV1JrguhjZnKZukB2X32txFPMOynJcM1sXy1jORM8bscLz
 cTHuTDEhuxK2r7KrRMfGpV6OijWGRhaCzUZdFa7E4Rh5t6MohiwN0B+k0ngu94CeKMOU
 6MK48MsCkr3/RWHAUMpOSm2YZpwheOX6SO65hw1TZC8uWDpTzMM55QnUAfxsJkMRomfN
 0z6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780868014; x=1781472814;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=HhevlY6dk/ftxvio6CBL6QbAFSSp/a5ngu9s7xr+zgc=;
 b=khSgt2yQHDg2iruFG6oJRCBHOIIvonVaC7sZSWdmVG/9vRUy3akQYjfdrm6MHqnNbo
 eC/9wDSc7WUrvB1zXFr8+wgMmZbFpk8YuNCDsXGuXnGqQs2YzHopVwUtmaKOa+MqqfXg
 Ad2fRKbw86LVqMJtX25GvV/XvTpfu3zNgiTE+mf/BS08X2gtUDoRtM4ACQ4uR6kTHAI/
 3bqOy8bsea+EsMetpSLehuPf3AOoMGWTy9mpA7Dr00YqkRVTixYfusI1cBiOjl7EOTFV
 uq+d5O7SSEOlUYMtmp1Klu3h+Au+iD8+eRwMxncpTOu8xAyQSunjDlH13y93Jjq6hNl8
 nmLA==
X-Forwarded-Encrypted: i=1;
 AFNElJ81o8XrmY2vb+o5A7fcZdf9aiEIHN+48lOIlaQ2L16ihKHJwDq+Cbk7S/TC3KSkNgKqOpO3FHxmF7U=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyPWhIEofXU4AF6m65GnQEIvmHSn5993kk7CPBeYs2EAIBWnRNb
 77ZP6/tzC77eyEx0otbCpkSzT2AaWp2FWetxfzUlgJ23N/+ZQbB4F6KPHegII01qei0HTGYF5WK
 jxYz7+R9cbTBRD+6R7vI0sD+8DX/iFhzOfvO68UabUhm3yqodbtCYJe8RaoR1w810ktfRna8=
X-Gm-Gg: Acq92OFxMHyMBV6979NG83rS0zyuznJ7WzlGewBKBwfrlXbDCnHt8dpm5iEiPuIFzk3
 dROkycRnP4vU7u3K5hroxgS5wE5oZkHmaH1n0AL/JD0KFY1c243OnQMSM6hLaUz3sydWU8avUr3
 QYqwmA25AwEa+gMWLDT2Xb9PSvuyPI0aE47rYKTSawwbsRaCs75m4uAZrislhRpiHNQTS0d7Xjt
 wr8JXXiGKH50SGDApma0cxEEhk0m1+GFXVb/UYkLMuKvpGcc/DIGPbR5LbuH+Sz2M/1T/yBUnWz
 3zFmEFi9IOeA7yewkFn8g0tIAbMfgY1X01ZSXOZQIAylOyZho9M30LP2na1r7pbsMp+2C7oAIyz
 VgcF/tPD469l7nhdv5703vRzKhXHEXsHt2n4JkJ3EZfKEz0/Uz/+fiYqZwwUqE3dHnBMT6HFeI6
 Vj0uH03I1eGZLW2dS6Wscm/r2T8SL0TgnVL6exwdJjcEU8iw==
X-Received: by 2002:ac8:5d8d:0:b0:517:5879:1e2f with SMTP id
 d75a77b69052e-517987df585mr128694761cf.27.1780868014040; 
 Sun, 07 Jun 2026 14:33:34 -0700 (PDT)
X-Received: by 2002:ac8:5d8d:0:b0:517:5879:1e2f with SMTP id
 d75a77b69052e-517987df585mr128694481cf.27.1780868013602; 
 Sun, 07 Jun 2026 14:33:33 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-396ac2d5ea9sm40374041fa.32.2026.06.07.14.33.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2026 14:33:32 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 08 Jun 2026 00:33:08 +0300
Subject: [PATCH v4 7/8] soc: qcom: pmic-glink-altmode: pass down HPD_IRQ events
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260608-hpd-irq-events-v4-7-30b62b335487@oss.qualcomm.com>
References: <20260608-hpd-irq-events-v4-0-30b62b335487@oss.qualcomm.com>
In-Reply-To: <20260608-hpd-irq-events-v4-0-30b62b335487@oss.qualcomm.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
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
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Pengyu Luo <mitltlatltl@gmail.com>, Nikita Travkin <nikita@trvn.ru>,
 Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Francesco Dolcini <francesco@dolcini.it>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1367;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=RMohNnP615sOpE6ZWKg1trb/KrvgErHGs2zP2ZkYPtM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqJeOQI5tl/0XcA3tgWGBDfparpRR7p6oX7Tvus
 qwjrqzb+oOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaiXjkAAKCRCLPIo+Aiko
 1XWXCACmNj3CHr4O+YRbKUG+T11qRjlO3v5XH4k0gj9GScSSKB/i++PNRfIVaB3JOvEoD/AYHrm
 YFUwGw2fBFT2Jv2Fhyilg176SDLOp8RsHVt0LQrKTd3iVzD84bkfPw5YQRsnoC0q2NNOeteuu4P
 oNZgIAB39IsrY1AUoXDu87QaI9/TPgg/T4uL/reYnY2d84fLwma0S1+Jh2/lbnZ1SDxBsBxpeSE
 e6BfBudjneZilPPKvQDNmThuUz1M8q6khvqmx+48G+tdedZN45pveTW7QE0GhFJ4QlRiFxRstqG
 Gz/WYDvc1HTnwPXv2iuBiwsSXHMYqAaiEHZoR0/q/qODETsN
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=DIa/JSNb c=1 sm=1 tr=0 ts=6a25e3af cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=Wdvqb4HS36tEXOME5F0A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: 7h_H3V3tZcKYdX5LBRdvdOzl2PRv_uSS
X-Proofpoint-ORIG-GUID: 7h_H3V3tZcKYdX5LBRdvdOzl2PRv_uSS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA3MDIxNyBTYWx0ZWRfXz2dtvY2ct8vQ
 xtVPVcgbeiYsdWZtSNO55Z5QJAncWXuK928A4zIAcRmbkAiW3VmTvXiEP4x+09p1Ew4gHfWESFa
 c2nzVfTfwV0Ga1HMEkRjeGvQGv11/zdyN3WyKMDfwF36rOR1FCItcVkzct0Y0CpvAYQ0Q71ecgn
 V9gqbBlho+kjj7B1J6MwTyeq+MN0pUyihlANxnV8uOC23B9eP7g8N20m4hAbpim3WmmfYcYczf0
 XmnnjPPCczcpskBSBT+EZW9a6G0Ak1UCwlpjIkFrqD+jqHygq8+INt0WVX945MVRwAiF2FMygWX
 QIMWX+9hxFQY13ffOMEpsXDAl8u+4ZJrXhJ44GG5v3/K6vavR9DylPmagRqJN69hq6A5kBpwTcN
 5Ir27ucr6pePQRonr7mAfwGb1zOkfkBevhky3xXJKMzEY7jJoVXCmcduQdA7tsMbITt1em4MMi6
 4GbghHGPScbSCMx0v9A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-07_04,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 adultscore=0 malwarescore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606070217
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:heikki.krogerus@linux.intel.com,m:gregkh@linuxfoundation.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:adrien.grassein@gmail.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:robin.clark@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:sean@poorly.run,m:marijn.suijten@somainline.org,m:tomi.valkeinen@ideasonboard.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:mitltlatltl@gmail.com,m:nikita@trvn.ru,m:yongxing.mou@oss.qualcomm.com,m:luca.ceresoli@bootlin.com,m:francesco@dolcini.it,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kerne
 l.org,m:linux-usb@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:linux-amlogic@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:freedreno@lists.freedesktop.org,m:konrad.dybcio@oss.qualcomm.com,m:jernejskrabec@gmail.com,m:adriengrassein@gmail.com,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linuxfoundation.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,ursulin.net,baylibre.com,googlemail.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,trvn.ru,bootlin.com,dolcini.it];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[45];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3A398651ABC

The DisplayPort standard defines a special kind of HPD events called
IRQ_HPD. These events are used to notify DP Source about the events on
the Sink side.

Pass IRQ_HPD events from the firmware to the HPD bridge, letting those
to be delivered to the DisplayPort driver.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Acked-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/soc/qcom/pmic_glink_altmode.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/qcom/pmic_glink_altmode.c b/drivers/soc/qcom/pmic_glink_altmode.c
index 619bad2c27ee..946eb20b8f83 100644
--- a/drivers/soc/qcom/pmic_glink_altmode.c
+++ b/drivers/soc/qcom/pmic_glink_altmode.c
@@ -373,7 +373,11 @@ static void pmic_glink_altmode_worker(struct work_struct *work)
 		else
 			conn_status = connector_status_disconnected;
 
-		drm_aux_hpd_bridge_notify(&alt_port->bridge->dev, conn_status);
+		drm_aux_hpd_bridge_notify_extra(&alt_port->bridge->dev,
+						conn_status,
+						alt_port->hpd_irq ?
+						DRM_CONNECTOR_DP_IRQ_HPD :
+						DRM_CONNECTOR_NO_EXTRA_STATUS);
 	} else if (alt_port->mux_ctrl == MUX_CTRL_STATE_TUNNELING) {
 		if (alt_port->svid == USB_TYPEC_TBT_SID)
 			pmic_glink_altmode_enable_tbt(altmode, alt_port);

-- 
2.47.3

