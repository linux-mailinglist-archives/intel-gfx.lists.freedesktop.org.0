Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MD3YI9j23Gl/YgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 15:59:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F338D3ECDE2
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 15:59:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AF1910E489;
	Mon, 13 Apr 2026 13:59:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="aPv4BJzO";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MKE/Fz5O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9AAE10E47C
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2026 13:59:48 +0000 (UTC)
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63DDwPGr3567916
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2026 13:59:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 YP3tCk9uVMWJEI0cAi2Nc0h4779GkjDFyYbRspyGl48=; b=aPv4BJzO4sBCgjWE
 wJoI/xN0WZnbOmf2ndTeI87Y184qN16qzzpA4EhIuU5JFRVslR6LAJ/wAg3lgvfm
 6uZGnS7wZNnX55+RFw760eX1KYDYWsfZQ4uyEIwCh2CEW+bFfg9W0TYSqVo0bNPQ
 lqLuBg5IGbNjmnoDyhx43+u07bA65KIdNjWWB0Dd+3QdJaog93m48vXP9WHY9ndQ
 +8ZMTkAfEZ5MiDBMkLHGezEHRsHMOkZ9Nvnz2R3//N8z5RtDzn+eKs2eKGgxAXoE
 D0BoLIh3qts5Ni1uFVUWTXxElWTpsUZu/h+nu/Q1cveXkMKsYXVmpw6yO+J6OqCi
 4AW4tQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dh1uf006x-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2026 13:59:48 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id
 d75a77b69052e-50d8dac6233so79654601cf.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2026 06:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776088787; x=1776693587;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=YP3tCk9uVMWJEI0cAi2Nc0h4779GkjDFyYbRspyGl48=;
 b=MKE/Fz5OiOcP5i5aRclcLeZNiTsskRutajL1YjxwJpA1ohbB3VdOU/ipk41XXIyf6k
 U94z6vXjd1Ntsl3+gzBCmeaKGMPqyV7HmiKDVyxdGYndcLBRkRqLKnX+bYQJjLLHrw8N
 KcgV3cp88IoXHDgWnZRzhXPmEMLWIpuYnbZZet0V96ZgAx2TYo7RrtN8hfBQaKI+e/AT
 hie4UUNjz/AWrVXcyMhts/UylF8St4O8eWknTih22bvjRLDVqbv6W7aVmuQXFr/wu4/H
 GzGfXPESZCObZIZB7V3iGuAj6s/3ORLiEBVHUiFwvKfyskMqHPKBYF87LsnsVr0hwLL8
 jPNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776088787; x=1776693587;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YP3tCk9uVMWJEI0cAi2Nc0h4779GkjDFyYbRspyGl48=;
 b=mtK7FNQiQHI9H1vRDnZ12YI8yxnMDmtySP689syahI6YsFz9sSG41pGzlXn4jBZVcd
 egcb5EgILRxf1uXfzFPr6L2n1pOlzApV6gS4hjlPNJjhSKQggMeWz2kdlnCsY8ETJk95
 +BsZ25IN/hmNjVpPUH+aI5PkRK+0YqCTzSsu9C2do0hzKCjri6sSomP60ZQCxzfUrC6y
 nrvjsB+5zoFOV2oFMkgeZtv9XWbuix+f+KXrEcXSAu4DmQUnkluTzCP69HiZrVsym7VB
 aDN6jBZdJ/LmdKQNhuwHEIoZDdkqJf5qVA88pSFYqF/oGdrXvkiBhMvznBjSQUiusCrs
 8hRQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ/+VDj3o+o2ykbVrj+kVoy02BeurBcMwDh3F3KFTHAZtdYrgHaqfFaiCesfODS/3JrBO0u5d5qhfsQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxOMtcQv5ajilyAgMo+MbDSjKLUjotmPvqSP081Ypap0HNPWyqj
 yMHUsTlLdbwS5WoOxqSOIQrkDBVrHMo9G+MH8mJN5WltQF4iuTTmMagsrsGz/Hqv7VuY18DfwPO
 LRbupVhHqG6NtGHQaPfnHi3FxrdO2LWy9djQ51mtlKjAIizdOna4fcF9PNIB1D4A2GPTmbfY=
X-Gm-Gg: AeBDieuwcEMPQnQRL6IZAt6D6lRst6bXqRYlOqxKLB+9K+b3PDTtktHzkhYNNqfIbFQ
 YRid3atHHmNB/2FWZA9+YIhT9ozSznnY8VXrPTRxv5xTnuQAfhic/2riBYC8wJky3W+9S6oGjhT
 P3o8eAzgL0M8SdjdEOOQYi7IBWKhrhpeMS9ybnTjKr/dAdGHXs3XWKFvV1bYmAo85PkYDh1HBmz
 bNHSamT1GHOgGikEEB2kGcELnmDo/cHk6mW3y/+KIJHnDKFqh1ayYtvUxvmfnZ2y5wVKetTNgtV
 OzGMzL9FVN22ofScG0svEVk2bl9xbm61zRXJnz4Upmx5KOmYYu2RjSrq0veC5Tp2oEvUNwrS0/v
 9Bz2Cs9g+q3CsP9rFEM4DgLNfRncsDYuJmANEN5JeVn41mO/t06a0+g8rGt0od713bMne98VArP
 1ABbExP3n39qwVmCGJPlAEjFPrC/XU210sixM=
X-Received: by 2002:a05:622a:40c3:b0:50d:8050:a358 with SMTP id
 d75a77b69052e-50dd5bc32edmr180026211cf.47.1776088787109; 
 Mon, 13 Apr 2026 06:59:47 -0700 (PDT)
X-Received: by 2002:a05:622a:40c3:b0:50d:8050:a358 with SMTP id
 d75a77b69052e-50dd5bc32edmr180025641cf.47.1776088786538; 
 Mon, 13 Apr 2026 06:59:46 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-38e83bc1b49sm3349781fa.40.2026.04.13.06.59.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2026 06:59:45 -0700 (PDT)
Date: Mon, 13 Apr 2026 16:59:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kory Maincent <kory.maincent@bootlin.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Dave Airlie <airlied@redhat.com>,
 Jesse Barnes <jbarnes@virtuousgeek.org>, Eric Anholt <eric@anholt.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mark Yacoub <markyacoub@google.com>, Sean Paul <seanpaul@google.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Simona Vetter <simona.vetter@ffwll.ch>
Subject: Re: [PATCH RFC 09/12] drm: Introduce drmm_connector_dp_init() with
 link training state properties
Message-ID: <bwgzwwlmvlbtnl7qnmnjrkzjaifeyrhllnbjxh7txrd2o24aqi@2ykn2gwyatcx>
References: <20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com>
 <20260409-feat_link_cap-v1-9-7069e8199ce2@bootlin.com>
 <gmaxonri7y3k43pxsnxfnd23mydgrwsw2322v6m4yjoksqm7aj@4ehgvhzg2ubb>
 <20260413145930.140ba461@kmaincent-XPS-13-7390>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260413145930.140ba461@kmaincent-XPS-13-7390>
X-Authority-Analysis: v=2.4 cv=Dc4nbPtW c=1 sm=1 tr=0 ts=69dcf6d4 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=P-IC7800AAAA:8
 a=EUspDBNiAAAA:8 a=Z4SpDY1sp9IGsGPUEqoA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-ORIG-GUID: iNIZ08eB6eUUPUPbKRk_JRYUwWc1i2p7
X-Proofpoint-GUID: iNIZ08eB6eUUPUPbKRk_JRYUwWc1i2p7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDEzMDEzNyBTYWx0ZWRfX53dVSfltfiFg
 jbNgbQVMbKNaLH9p0JsmprS6utq5+Rqb2ArX7VtPWHZ6NcQilUsLTpluvOHy5+l9OV1/bSQiVmo
 pxH/gjDEY+Nk8kDUL9ral1qyhM1+R3QxgcjfLCEpoXnhVef5uEcW3UrfLHuHgGBlPJqJSoKrL7s
 QcBs+D9VAFHtob5/EOnr889GePry1azTjLJSqjCdkNVZ8ya99xCgpmttoJMxhm4Kr7zirj/ORsZ
 P6jzn+yQcUytEVS0XqfZJS3/qBr2F/aGrNA8vKLzRZ0RHhEcUvBddNElts/tSKjTP5PlZsgR1Z9
 wBA4pVmQvORTcAmb5jfXMNaSjsZINNdRF58/I6USoOFYA87jatkkiDM6ahn8XddFy+blpjokB1P
 MahHI/7MOCy7EciGH5f9jYW+bSJr3iVvsT8tfWnPAKP+dPgONWFpOetGd/SzZHbYcaP44Gikmb+
 eCXVH4JzwQPtOb+dFjA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-13_03,2026-04-13_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015
 impostorscore=0 priorityscore=1501 spamscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604010000 definitions=main-2604130137
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[35];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kory.maincent@bootlin.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:airlied@redhat.com,m:jbarnes@virtuousgeek.org,m:eric@anholt.net,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:chris@chris-wilson.co.uk,m:thomas.petazzoni@bootlin.com,m:markyacoub@google.com,m:seanpaul@google.com,m:louis.chauvet@bootlin.com,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:simona.vetter@ffwll.ch,m:jernejskrabec@gmail.com,m:matthiasbgg@gmail.c
 om,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,redhat.com,virtuousgeek.org,anholt.net,kernel.org,suse.de,linaro.org,ideasonboard.com,kwiboo.se,pengutronix.de,collabora.com,chris-wilson.co.uk,bootlin.com,google.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim]
X-Rspamd-Queue-Id: F338D3ECDE2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 13, 2026 at 02:59:30PM +0200, Kory Maincent wrote:
> On Fri, 10 Apr 2026 00:53:08 +0300
> Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> wrote:
> 
> > On Thu, Apr 09, 2026 at 07:08:25PM +0200, Kory Maincent wrote:
> > > Add a managed DisplayPort connector initialization helper,
> > > drmm_connector_dp_init(), modeled after the existing HDMI counterpart
> > > drmm_connector_hdmi_init(). Cleanup is handled automatically via a
> > > DRM-managed action.
> > > 
> > > The helper creates the following immutable connector properties to expose
> > > DP link training capabilities and state to userspace:
> > > 
> > >   - num_lanes: bitmask of supported lane counts (1, 2, 4)
> > >   - link_rate: Array of supported link rates.
> > >   - dsc_en: Display Stream Compression supported
> > >   - voltage_swingN: per-lane voltage swing level bitmask
> > >   - pre-emphasisN: per-lane pre-emphasis level bitmask
> > > 
> > > Link rates are passed by the driver in deca-kbps, following the DRM
> > > convention, but exposed to userspace in kbps for clarity.
> > > 
> > > Two additional helpers are provided to update and reset those properties
> > > at runtime:
> > >   - drm_connector_dp_set_link_train_properties()
> > >   - drm_connector_dp_reset_link_train_properties()
> > > 
> 
> ...
> 
> > > +/**
> > > + * struct drm_connector_dp_link_train - DRM DisplayPort link training
> > > + * information report
> > > + */
> > > +struct drm_connector_dp_link_train {  
> > 
> > THese define the current DP state. As such, they definitely make sense
> > to be a part of the drm_connector.
> > > +	/**
> > > +	 * @nlanes: The number of lanes used
> > > +	 */
> > > +	u8 nlanes;
> > > +
> > > +	/**
> > > +	 * @rates: Link rate value selected in deca-kbps
> > > +	 */
> > > +	u32 rate;
> > > +
> > > +	/**
> > > +	 * @dsc: Display Stream Compression enabled
> > > +	 */
> > > +	bool dsc_en;
> > > +
> > > +	/**
> > > +	 * @v_swings: Array listing the bitmask voltage swing level per
> > > lanes
> > > +	 */
> > > +	u8 v_swing[4];
> > > +
> > > +	/**
> > > +	 * @pre_emph: Array listing the bitmask pre-emphasis level per
> > > lanes
> > > +	 */
> > > +	u8 pre_emph[4];  
> > 
> > Please consider following struct phy_configure_opts_dp (or using it as
> > is). Overall, please refer the talk and (more important) the lightning
> > resumee at this XDC. I have some bits and pieces ready in spite of that
> > proposal, but I didn't have time to finish it.
> 
> I didn't know this phy_configure_opts_dp struct. This indeed could make sense
> to reuse and modify that structure for our needs.

Why would you want to modify it? It is an interface for the PHY drivers.
Is there anything that you miss there?

> About your XDC talk. What were the developments you were talking about? Could I
> have a look at them?

I've posted an RFC just before the XDC. Currently I'm looking at the
link training generification. Overall, you don't have to wait for that
job to be completed, just take some of the notes in account (like reuse
of the PHY config structures).

> 
> Regards,
> -- 
> Köry Maincent, Bootlin
> Embedded Linux and kernel engineering
> https://bootlin.com

-- 
With best wishes
Dmitry
