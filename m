Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONNjBMDBBGpjNgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 20:24:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C3E538D59
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 20:23:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17AC710EFF5;
	Wed, 13 May 2026 18:23:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="Rc0jFcRt";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MT8Bf3sY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52FFD10EFF3
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2026 18:23:54 +0000 (UTC)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 64DHM3h73430351
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2026 18:23:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 lUxjcmVB1mry2JFOZUVE65+ZJk/cVp6zUgik6yCWYSo=; b=Rc0jFcRtiw+h55So
 zoTr6UzoG1TzenCRG2BQXvDfD6fxKCDKrQmyLxG3/4Wa1QnskXhnepcU30WtlDMR
 zz/9dkXLcAnffHFqLks3kors5Tm70GRjvq57IMCk3wa6L0jP8xr102vGPPnq8Iol
 3fAYLdgOU4sp/7uInRa1f7k1uShv/ddhwwPxFnd8B/6M5to5JtodKsLaHR7UAJC+
 wgUYdnL8KgQ7h/n/Xy5YnkjnuZi0CJ+2m1uQ7IoN8LuI1V38k+AuWwns8KAMNq+L
 NlgVMGdZH84ny1tN+npBtZROT80H8lbUDeHKYovQGMUtquWbdMEahR4Lobe0MK1r
 GjJpbg==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com
 [209.85.217.69])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e4qmchujk-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2026 18:23:53 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id
 ada2fe7eead31-63230863010so5180843137.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2026 11:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1778696633; x=1779301433;
 darn=lists.freedesktop.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=lUxjcmVB1mry2JFOZUVE65+ZJk/cVp6zUgik6yCWYSo=;
 b=MT8Bf3sYPXF2XiruUcVUSZ1gqgn59gAf4vJeX8sQ3uBlZiarqaTHQ4nQJ7y7SGVrtH
 w4YMO/OFWe/RJKUsQxrgONq4sOFrRiZ0Nal2G9a/WKxFlh/G24H6ldoLg1EN1rpPVIuG
 GJEnX8hLjey4lW3oYk4Q9I7YhEF+QfIic58eZO5nJXHz7Spncx8qaFiHM1VChIrU/ayV
 KYKuJdLYT3nHaMnbNNkS79cU0GubU19ZUoHEvLydcvoqB6xmPov/jlTgQERqVXvsSTGX
 LZKPTz4o5Nm7Braz2kgLIU9kPF6fXnd0XKSdygoghEaX2x5nk8bnDfi1IqF24hGzQp4r
 vWSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778696633; x=1779301433;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=lUxjcmVB1mry2JFOZUVE65+ZJk/cVp6zUgik6yCWYSo=;
 b=eTNozdze29H2MAPqLd9GQOb/am0WB+OcwnUJ7UayMHtZVNXj6MfXeRTQbtXnWkGkoH
 +I7TnCy/dBWsg4WC+cNa7g3iAMENq3oInY/htJ1voYtCyuY/+7OEVjUR6YylN0H9Q/7c
 55ZABMz2qTrRRyAlOfBoYWbs5NlzyUktfB+U14/spK+zw5WnSBEokK+fanYcQK6It9Ms
 LUBgsyHB2VcD1vQQqUsLs29XSdB95sHrSchefw659W+GcdoTZKcAL5SQhNxvKr0p+F/l
 ZOweflwcjK9Jj3yaruPaIzQNLqcrWYqw8JGPYYIt96XkGbyg4yiaV0pJbd0uDhazOSzk
 xfxw==
X-Forwarded-Encrypted: i=1;
 AFNElJ/bo/woSue5yzpyWiMkvonSRVWBIt9EMZI4gLyoIFciFBcXKiMXb83XH9+20DAICFuQV14hdEPTVck=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzQCD5T6zeW5D6KLHNb90jhstwL1mJKlqwB/Aw4v2AMq70701Fv
 okEhBuC1mHzYcnTy5LGL9psg7UttEJ/GIJKwsJyJgAEXAWncknfzOh7Jvijfl7jZ6nNArBssP8d
 WPrC6pa+Iz5hlewuocs0cbJaEN9ImqCxyZIE7hRdysWUq5tpGRMq4GfeQgAw5AskTIDDvw441e+
 OOSpE=
X-Gm-Gg: Acq92OGl+TgzvUlT3Om5+O+yczIQxoVvtiPCawiYUO1zeClBQSwYeZjj+gT/MsofOz6
 r5VPJ1gVv4smQM5pfWGTz4+LkA05NfQkR7fxrYiM1ZpxHJnGfNUaOBkCMgYmrXPlW8/pWU2SfBw
 4hFKm+Umz74x1UROZnNMQqQ7RSeH6uj9GKEOGBs5tJ46pEK14ZEaCn4ZG/AIvABDvulCAj5gjZo
 tsuM/1eHR5u7cwS+JvOW5r85KmD1FiRNt/LKib1oRc4Qk2fCR1ZXBbNv5R4CTcA5jfOaqFmPY8v
 7GI+PPaGvuaLD2OM5ncuoY3WrPbDyDNCbotoakJTQyC/4FMv3nptSrhQqltlrV0F5RJQbNLikxM
 wyMiL/DiOMT21V3uTVeAPeVHVqflOikER9peIALePe/YfhdNDxUtXtSrPt6zgV92RQTMeCQw38i
 CgjUjI5Ofc8+F05HWMVWiX2Zdmqg8+WvDTfgw=
X-Received: by 2002:a05:6102:3049:b0:631:37cb:1e64 with SMTP id
 ada2fe7eead31-637a6c2f9bfmr2354063137.4.1778696632732; 
 Wed, 13 May 2026 11:23:52 -0700 (PDT)
X-Received: by 2002:a05:6102:3049:b0:631:37cb:1e64 with SMTP id
 ada2fe7eead31-637a6c2f9bfmr2354028137.4.1778696632148; 
 Wed, 13 May 2026 11:23:52 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a8a951d1f6sm4212851e87.23.2026.05.13.11.23.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2026 11:23:51 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 13 May 2026 21:23:21 +0300
Subject: [PATCH RESEND v3 1/6] drm/connector: report IRQ_HPD events to
 drm_connector_oob_hotplug_event()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-hpd-irq-events-v3-1-086857017f16@oss.qualcomm.com>
References: <20260513-hpd-irq-events-v3-0-086857017f16@oss.qualcomm.com>
In-Reply-To: <20260513-hpd-irq-events-v3-0-086857017f16@oss.qualcomm.com>
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
 Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=5422;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=lnVODOLTo2WpHrvqFht5FXa9gKD0IeWSjwE7+hKxwmM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqBMG034q0WD1dU9zBBukSN63zwQflgiz212FH+
 aqfkZzELSaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCagTBtAAKCRCLPIo+Aiko
 1YnxB/9wgWldcqDS/btctLZ+d4WsAunvc9HMjgx3vDv+jWuyFXbuto6YvRhbSJRFl/bn6USOWD2
 w+hnbxoLs+GoJtRyQnFJYpcDk1fBoIczXXMR6sphI9KOwzaltd2I60W4bmVoFc5Wvsr4+nemF2Z
 pf0UegE91hmpbV+XvOx/ta7AUoZKVfz0FRc/R5JYhifiw+cSJQjoP8x/tu4Ncj6llXyPrg1oN2K
 eFPtDtsEXLMSMnwoXsQRLn3mVftP5QhLrFy41s+AfgyNdqoTgY07/GFwxWrUKJVCGP4hhGzQE2W
 AnzPdKdY/9NCJym/+SY3fUf2/aD8Ud+ZcUgSLRoY/KMHiWaX
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: GOfH8lrey6dys4G-UxDDm4jCklNf6Xrp
X-Authority-Analysis: v=2.4 cv=Hu5G3UTS c=1 sm=1 tr=0 ts=6a04c1b9 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=-JEBqWJC5KD3P7x9m9UA:9 a=QEXdDO2ut3YA:10 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEzMDE4MyBTYWx0ZWRfX8eJcQjt5/LE6
 +qY1LDi73usricz8MsGlZvXG6d39ZDIPtV0FaEVZOVePafDSKQkumKYWiAhq43kFoo1iUskAgWA
 YrA/tg0uYSR69tJI7t2oVn92UqBo3rX4IxANRxj6+Mvq/nQTWViDlfsqe2MLsNTNIeKAWBUh6VI
 JmBto6wrEEAekABud9PzehvhEzPnnMl2hYz66uC4mocYecr+y5ucj6GG8nXik5W35W+o6IfbTu+
 dtxNfdujpirNL8iKYz8BBsVxG0PNUSP/7GTLCLfBtoj3UdhIehp7Ys2ftTj65NyE46MoaR8FDtk
 W1kVuT/XfhRjXwBv3X2sHEvs/4fjic6cUtZNUIJ7KeFzHkVd6m7oHRDdaNwvVEdu9nu4Ui+3Mg3
 9jRbBS1SVe1KA7ED4KezSLcUy9JizEpBd/6EbS4B5gNJJjKX2k9b8RlCKcZpkTaB/ZKi49aWqPM
 quRUXajN+HCey26JZbA==
X-Proofpoint-ORIG-GUID: GOfH8lrey6dys4G-UxDDm4jCklNf6Xrp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-13_02,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 impostorscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605050000 definitions=main-2605130183
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
X-Rspamd-Queue-Id: B0C3E538D59
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:heikki.krogerus@linux.intel.com,m:gregkh@linuxfoundation.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:adrien.grassein@gmail.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:robin.clark@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:sean@poorly.run,m:marijn.suijten@somainline.org,m:tomi.valkeinen@ideasonboard.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:mitltlatltl@gmail.com,m:nikita@trvn.ru,m:yongxing.mou@oss.qualcomm.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:intel-xe@lists.
 freedesktop.org,m:linux-amlogic@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:freedreno@lists.freedesktop.org,m:dmitry.baryshkov@oss.qualcomm.com,m:jernejskrabec@gmail.com,m:adriengrassein@gmail.com,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[43];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linuxfoundation.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,ursulin.net,baylibre.com,googlemail.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,trvn.ru];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
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
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim]
X-Rspamd-Action: no action

The DisplayPort standard defines a special kind of events called IRQ.
These events are used to notify DP Source about the events on the Sink
side. It is extremely important for DP MST handling, where the MST
events are reported through this IRQ.

In case of the USB-C DP AltMode there is no actual HPD pulse, but the
events are ported through the bits in the AltMode VDOs.

Extend the drm_connector_oob_hotplug_event() interface and report IRQ
events to the DisplayPort Sink drivers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/drm_connector.c          |  5 ++++-
 drivers/usb/typec/altmodes/displayport.c | 15 +++++++++++----
 include/drm/drm_connector.h              | 19 ++++++++++++++++++-
 3 files changed, 33 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index 47dc53c4a738..edee9daccd51 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -3510,6 +3510,8 @@ struct drm_connector *drm_connector_find_by_fwnode(struct fwnode_handle *fwnode)
  * drm_connector_oob_hotplug_event - Report out-of-band hotplug event to connector
  * @connector_fwnode: fwnode_handle to report the event on
  * @status: hot plug detect logical state
+ * @extra_status: additional information provided by the sink without changing
+ * the HPD state (or in addition to such a change).
  *
  * On some hardware a hotplug event notification may come from outside the display
  * driver / device. An example of this is some USB Type-C setups where the hardware
@@ -3520,7 +3522,8 @@ struct drm_connector *drm_connector_find_by_fwnode(struct fwnode_handle *fwnode)
  * a drm_connector reference through calling drm_connector_find_by_fwnode().
  */
 void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode,
-				     enum drm_connector_status status)
+				     enum drm_connector_status status,
+				     enum drm_connector_status_extra extra_status)
 {
 	struct drm_connector *connector;
 
diff --git a/drivers/usb/typec/altmodes/displayport.c b/drivers/usb/typec/altmodes/displayport.c
index 35d9c3086990..7182a8e2e710 100644
--- a/drivers/usb/typec/altmodes/displayport.c
+++ b/drivers/usb/typec/altmodes/displayport.c
@@ -189,7 +189,9 @@ static int dp_altmode_status_update(struct dp_altmode *dp)
 	} else {
 		drm_connector_oob_hotplug_event(dp->connector_fwnode,
 						hpd ? connector_status_connected :
-						      connector_status_disconnected);
+						      connector_status_disconnected,
+						(hpd && irq_hpd) ? DRM_CONNECTOR_DP_IRQ_HPD :
+								   DRM_CONNECTOR_NO_EXTRA_STATUS);
 		dp->hpd = hpd;
 		sysfs_notify(&dp->alt->dev.kobj, "displayport", "hpd");
 		if (hpd && irq_hpd) {
@@ -212,7 +214,10 @@ static int dp_altmode_configured(struct dp_altmode *dp)
 	 */
 	if (dp->pending_hpd) {
 		drm_connector_oob_hotplug_event(dp->connector_fwnode,
-						connector_status_connected);
+						connector_status_connected,
+						dp->pending_irq_hpd ?
+						DRM_CONNECTOR_DP_IRQ_HPD :
+						DRM_CONNECTOR_NO_EXTRA_STATUS);
 		sysfs_notify(&dp->alt->dev.kobj, "displayport", "hpd");
 		dp->pending_hpd = false;
 		if (dp->pending_irq_hpd) {
@@ -397,7 +402,8 @@ static int dp_altmode_vdm(struct typec_altmode *alt,
 			dp->data.conf = 0;
 			if (dp->hpd) {
 				drm_connector_oob_hotplug_event(dp->connector_fwnode,
-								connector_status_disconnected);
+								connector_status_disconnected,
+								DRM_CONNECTOR_NO_EXTRA_STATUS);
 				dp->hpd = false;
 				sysfs_notify(&dp->alt->dev.kobj, "displayport", "hpd");
 			}
@@ -827,7 +833,8 @@ void dp_altmode_remove(struct typec_altmode *alt)
 
 	if (dp->connector_fwnode) {
 		drm_connector_oob_hotplug_event(dp->connector_fwnode,
-						connector_status_disconnected);
+						connector_status_disconnected,
+						DRM_CONNECTOR_NO_EXTRA_STATUS);
 
 		fwnode_handle_put(dp->connector_fwnode);
 	}
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index f83f28cae207..e05197e970d3 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -91,6 +91,22 @@ enum drm_connector_status {
 	connector_status_unknown = 3,
 };
 
+/**
+ * enum drm_connector_status_extra - additional events sent by the sink /
+ * display together or in replacement of the HPD status changes.
+ */
+enum drm_connector_status_extra {
+	/**
+	 * @DRM_CONNECTOR_NO_EXTRA_STATUS: No additional status reported.
+	 */
+	DRM_CONNECTOR_NO_EXTRA_STATUS,
+	/**
+	 * @DRM_CONNECTOR_DP_IRQ_HPD: DisplayPort Sink has sent the
+	 * IRQ_HPD (either by the HPD short pulse or via the AltMode event).
+	 */
+	DRM_CONNECTOR_DP_IRQ_HPD,
+};
+
 /**
  * enum drm_connector_registration_state - userspace registration status for
  * a &drm_connector
@@ -2521,7 +2537,8 @@ drm_connector_is_unregistered(struct drm_connector *connector)
 }
 
 void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode,
-				     enum drm_connector_status status);
+				     enum drm_connector_status status,
+				     enum drm_connector_status_extra extra_status);
 const char *drm_get_connector_type_name(unsigned int connector_type);
 const char *drm_get_connector_status_name(enum drm_connector_status status);
 const char *drm_get_subpixel_order_name(enum subpixel_order order);

-- 
2.47.3

