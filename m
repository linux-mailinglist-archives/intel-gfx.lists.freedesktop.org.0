Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFfhE4Oe52ml+QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 17:57:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E83B43D051
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 17:57:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B8E210E8B5;
	Tue, 21 Apr 2026 15:57:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="lDFHNou7";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XTwFiafI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91E6F10E250
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 15:57:51 +0000 (UTC)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63LFbSeT3337238
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 15:57:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 Ys1jyeNpnzd90OZf8N4CxGmEXCPff/CREI6n0RviJik=; b=lDFHNou77qSltRFT
 d6mQBV2twhNcfaV3BWEzHvLwNzBM7Kr1tQOtNZtfUAUFioKt1G+wO9ITN72NKDFS
 5UDnm+2ORgJBRVYctxjUSqeXte0QTQI0whKUztK20/S9eDDxSBIKlNzGfG/fTzzZ
 krNDDSq6SqgYvLRhpQAm/le6Ped08gdfIz5V4pBftRdXaXoxVN/KLS6noPl6QxFV
 gnRDH1GOZwh0PUZDpyL5fTxXld3145ylLiprYYjdW/HcbSeUAo6FqsnTbISkgNcV
 Flq5TIjocw4Vyyk0U0euYYEWg4ecfkIQo8O4rKkrzjjubft0Qqaq60D2ufG9NAxB
 IUFJfQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dpc1jg2de-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 15:57:50 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id
 d75a77b69052e-50e136aff17so81481261cf.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 08:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776787070; x=1777391870;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Ys1jyeNpnzd90OZf8N4CxGmEXCPff/CREI6n0RviJik=;
 b=XTwFiafI6pPVF9Lv8fKLNrJ8+p1gXLCnaANuPh+B+Va8t3WdIAdjfFz9UJYDQoXaOr
 SMbjgwzpG+aAsg/j0hqupzvilOiqAYHzEuigx6WyKrsIzDzXRzgJtYqalTGV3DhfBn/0
 mBqbhU0CSiH8xvwboRNBl0wbfHs2paA0oGHBukh1rwnSQMEs64+i21CeAlHv9DUEuhjA
 IdDdKOBpjX18mLKC42aaiwLemtD6xQeWbbpV4U2TVzTKaKFcLS++Q423B1V3/Zq5yE+u
 DBwGlMYYidqefDZePk5N8QnXtsn7DBDjX/5qXjQ2SjBSFcC/qiAIqMfunFT0bKGDOjhO
 m84g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776787070; x=1777391870;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Ys1jyeNpnzd90OZf8N4CxGmEXCPff/CREI6n0RviJik=;
 b=oyQAxp5hwXoebQAKSZkhntJ77dLN2FMkdgKVCQDMy3kvRyihUpOTERU55nQG6sbeZj
 S53/9vv6PGFKgt8M/htgsMFZQ+TvhhyAU6Z+B7rLmD+XTrRBdBaJOClKnFff2WThoEvE
 XxGOsCw2FGLTONmtcvKpqnOhDaX7aH3CkhA8taUBUOTuLqew+zBhS86BOLujIcBCR8xx
 hq4R2kC+VdOoB7OmDZsQgtEVFsUz6opHdvSWDdZxdQfixtb6HiEMKBJKWEesa3OSYdxe
 q7TgHEQs8FK3e3/LNNVY2Uy3IAHPSSAxkk3n9DrRc1ZvKfzq0L/iMl9ytp815C+8MVoJ
 Jq5w==
X-Forwarded-Encrypted: i=1;
 AFNElJ+ltv1x+QRhzTcCd82181NWVbfmkUI084fTO/zGvkqo75z+0jlZT+OMLJsaUqW19CCKpQTrlC9dBv0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy4vNvX+L1sX++M5bXVLO8XoNZelwpMeftZVdjs7V2kk0MSAJbr
 LFdsC+HeZxWzjc3dssH9ud90wuk4mmrubqN+8HTx8pCVOrP6TnSxcxKCREz9vzX+tRmh/unV+Ff
 yZLYB5R4cKZzR7MAJbUcUV4T9Jmy+GsEBS6RQD92JKia0qFiXzdwZ3NwFby1RghSXPUPFZqA=
X-Gm-Gg: AeBDieuFI4eZkHGaTQI52dBW8z4EceJJeFPRA6ziIzx8dTeM6bsV4xGtCkVJiB3ML50
 rY0EJyS8liokevmahXRBysr+axKAZs+Pi60F24nZXZy2LN5uLmnDireUgsESk45b/F68ABwG+DJ
 VgtDKEK7BXyhkNH4S9SeqXIpzVPs78sMk69e2JTekbByW+z7+j3N3sYheSX+R7GiZS67M9AQMfR
 XonMhwhYUQuk/Ji7hAU+4Gd0swANOZ3EfQ1B+42Elyi0GDl/7MKCBBlbjYNwwlIXidcThDjTNlh
 XRHzVIH+ayA5k3G6Cr3TfxnH51kMHOtufDlyMoZo28zXzRpgZPDzJfTIOJB8pZaTD/KWAfvvxSG
 QY5MpwFFuNQ+DkqE/nQv4Z1e+KBGqWI1J+NaRVtD36z+dy3HSsGwcee8tk3nHYHDL2ai0pct81f
 WfWr6vP6OV39mHH6kRSrdea/2vmVy4NhyI97zaMqRfweEKpQ==
X-Received: by 2002:ac8:7f0b:0:b0:50b:4e4e:1a20 with SMTP id
 d75a77b69052e-50e36ca52aemr279020711cf.59.1776787070024; 
 Tue, 21 Apr 2026 08:57:50 -0700 (PDT)
X-Received: by 2002:ac8:7f0b:0:b0:50b:4e4e:1a20 with SMTP id
 d75a77b69052e-50e36ca52aemr279019841cf.59.1776787069503; 
 Tue, 21 Apr 2026 08:57:49 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a5241f6583sm1444371e87.39.2026.04.21.08.57.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2026 08:57:48 -0700 (PDT)
Date: Tue, 21 Apr 2026 18:57:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <skhan@linuxfoundation.org>, Jyri Sarha <jyri.sarha@iki.fi>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Simon Ser <contact@emersion.fr>,
 Harry Wentland <harry.wentland@amd.com>, Melissa Wen <mwen@igalia.com>,
 Sebastian Wick <sebastian.wick@redhat.com>, Alex Hung <alex.hung@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Chen-Yu Tsai <wens@kernel.org>,
 Samuel Holland <samuel@sholland.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Daniel Stone <daniels@collabora.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v2 15/20] drm/drv: Call drm_mode_config_create_state() by
 default
Message-ID: <rkrhykm7dcttupn3plthf2m5sshtnnojib3f4pj4lxwrswetai@ncxm7oos35zz>
References: <20260320-drm-mode-config-init-v2-0-c63f1134e76c@kernel.org>
 <20260320-drm-mode-config-init-v2-15-c63f1134e76c@kernel.org>
 <79cc30d5-80b5-4d87-a3ad-36d6fad98853@suse.de>
 <dd39f423-1598-4749-8c95-98b8daf69680@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <dd39f423-1598-4749-8c95-98b8daf69680@suse.de>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIxMDE1NyBTYWx0ZWRfX/TxihJyaqoI5
 nv6RvHHIb9l0GycbTeKIcyhpwUedjrsnMiW+BvRaab4zgAasIiu5KCUTv+NcMxNcxX4d1B1ytPO
 qZOUQKeLHb8LaDXNWOevzWDynt17Ptlsk82wSUDlr1P/Q0XAV86CRIQzxUqVNKoYlCeWgQ9tixB
 DYcvYimdFuE+/3Yai/delYK6rXLQUzcT1Chz+K/9yoy/0TYNmAfOhy1iWq5e6Kr+XFmJATSSK0w
 1LV8NISe6ZA1DmmFR37aWaEg1nNa11Shm33v+m9ZqhEGtm8uVgUMFmE3c51j4kEfANpmrcIqeUV
 mbMSPIYk2J7nXZKxEdvqbvNmpwveMkpwnRVR1LURwR/q2lVOqlYqMgrAeJXMUWiQ+g4QzxJ3cbo
 lR1Lztu18QuQPOIgHYT7rsl4ezoZzjCcUMPqVv0FplaTowViHlCpCfnGH0fbdCvEWvaXmgI7OCA
 w5pGQAU9iQnneAPk0Pg==
X-Proofpoint-GUID: tDJIZ9AuO4ovh-ynagvZVzjGWJS0T6gB
X-Authority-Analysis: v=2.4 cv=IcG3n2qa c=1 sm=1 tr=0 ts=69e79e7e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=VwQbUJbxAAAA:8
 a=iox4zFpeAAAA:8 a=YNIvkKx5IWywne6YJjgA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=WzC6qhA0u3u7Ye7llzcV:22
X-Proofpoint-ORIG-GUID: tDJIZ9AuO4ovh-ynagvZVzjGWJS0T6gB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-21_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0 adultscore=0
 spamscore=0 malwarescore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604210157
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
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tzimmermann@suse.de,m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:jyri.sarha@iki.fi,m:tomi.valkeinen@ideasonboard.com,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:contact@emersion.fr,m:harry.wentland@amd.com,m:mwen@igalia.com,m:sebastian.wick@redhat.com,m:alex.hung@amd.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:wens@kernel.org,m:samuel@sholland.org,m:dave.stevenson@raspberrypi.com,m:mcanal@igalia.com,m:kernel-list@raspberrypi.com,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:daniels@collabora.com,m:intel-xe@lists.freedesktop.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:jernejskrabec@gmail.com,s:lists@lf
 dr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[kernel.org,linux.intel.com,gmail.com,ffwll.ch,lwn.net,linuxfoundation.org,iki.fi,ideasonboard.com,intel.com,linaro.org,kwiboo.se,emersion.fr,amd.com,igalia.com,redhat.com,ursulin.net,sholland.org,raspberrypi.com,lists.freedesktop.org,vger.kernel.org,collabora.com,lists.infradead.org,lists.linux.dev];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,suse.com:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,qualcomm.com:dkim]
X-Rspamd-Queue-Id: 9E83B43D051
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 21, 2026 at 05:33:12PM +0200, Thomas Zimmermann wrote:
> 
> 
> Am 21.04.26 um 15:38 schrieb Thomas Zimmermann:
> > Hi
> > 
> > Am 20.03.26 um 17:27 schrieb Maxime Ripard:
> > > Almost all drivers, and our documented skeleton, call
> > > drm_mode_config_reset() prior to calling drm_dev_register() to
> > > initialize its DRM object states.
> > > 
> > > Now that we have drm_mode_config_create_state() to create that initial
> > > state if it doesn't exist, we can call it directly in
> > > drm_dev_register(). That way, we know that the initial atomic state will
> > > always be allocated without any boilerplate.
> > > 
> > > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > > ---
> > >   drivers/gpu/drm/drm_drv.c | 4 ++++
> > >   1 file changed, 4 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> > > index 2915118436ce8a6640cfb0c59936031990727ed1..820106d56ab399a39cac56d98662b5ddbcae8ded
> > > 100644
> > > --- a/drivers/gpu/drm/drm_drv.c
> > > +++ b/drivers/gpu/drm/drm_drv.c
> > > @@ -1097,10 +1097,14 @@ int drm_dev_register(struct drm_device *dev,
> > > unsigned long flags)
> > >         if (drm_core_check_feature(dev, DRIVER_MODESET)) {
> > >           ret = drm_modeset_register_all(dev);
> > >           if (ret)
> > >               goto err_unload;
> > > +
> > > +        ret = drm_mode_config_create_state(dev);
> > > +        if (ret)
> > > +            goto err_unload;
> > 
> > Way too late. Lets rather go through drivers and call this where they
> > currently call drm_mode_config_reset() for initialization. This can be a
> > single-patch mass conversion IMHO.
> 
> On a second thought, can't we modify the suspend code and leave the reset
> as-is for now?  I'd still be interested to use reset as a means of
> initializing the hardware or loading state on probe. So keeping the _reset()
> calls in place might be helpful for that.

But isn't it the expected behaviour? The driver can reset(), but if
it didn't, the default would be to create empty working state. In the
end, the drivers also can call this function to create the state, don't
they (and then perform the readout logic)?

> 
> What's the long-term plan here?
> 
> Best regards
> Thomas
> 
> > 
> > Best regards
> > Thomas
> > 
> > >       }
> > >       drm_panic_register(dev);
> > >       drm_client_sysrq_register(dev);
> > >         DRM_INFO("Initialized %s %d.%d.%d for %s on minor %d\n",
> > > 
> > 
> 
> -- 
> --
> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
> GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)
> 
> 

-- 
With best wishes
Dmitry
