Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBbMJQlr5mmBwAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 20:06:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DAC43273B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 20:06:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A561510E727;
	Mon, 20 Apr 2026 18:05:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bRjPIkEH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com
 [209.85.217.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 473BD10E036
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2026 12:18:11 +0000 (UTC)
Received: by mail-vs1-f43.google.com with SMTP id
 ada2fe7eead31-6058a955e04so431205137.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2026 05:18:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776428290; cv=none;
 d=google.com; s=arc-20240605;
 b=GljA1d9iGjSGbR5LI2pH+lzuZWFuWmgHwEZpZXn6974X2lLSyHDDRu/H6jPfIljVqF
 FDMbpFfTwszvUevKe7IMrqB5iaSBqLd7HlqYL5Uzmkm1vO1rnGEf8g+76Fmo/GeQGkil
 sTPNpK0N3kdqfr5ZjglMfLKXPqxQBdu/SK0eGRVNPl65Fb+oppWLPbcMMdmluzJ4NtFU
 ZaYV3dMNoZxb9ehRWEGL8oc6mfSC1I1+WFbbtTpW1bYZLdDR1DP7dTNeQlGS0xwXrz5o
 8JzxsDmzYXQzVPT5r/YrKiNp4fQkzWYMLuiLOfthCmrnMMZQCSuH0hYCxHRGl3j2wD3p
 BLOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=cDMhKxQZOBW41kLl446l1EJd+PVPbWKyXfIiDzkTED4=;
 fh=IQjK765ovZ3mv/RcMZO57P1D4UgSwZl/DSQGnM2p8Wk=;
 b=eQW6kdYdqHajxikxpZk/yMWauqVBl86l9VNA8nwsw25xFYPliDUh8ohVTECXASXlj5
 Y712bnXvVCsWZqKvUjFm4W0U2p2vxLLv7/D6/Kii1krCMYuno5aZAqiUtyi3Tbi8sjEj
 VuhzG4Y5tNPqYChCfHrydHZdneZHH8PbOQ4xDfQh/NhwinBICjTo73DIq9N2kHj11Dg4
 Uvg1H95X2EdRPolr7UXvEdI22YCxt0ccwXvoIRpJ3UuL5BZLXeo4P7ehBEgHDkNbmH0k
 i4XTLa7nHZ5COiswWAPtgPm4N88R8XVa1ccrNfN5J4jWweTXrUAJffgsAN0o1SWFEsPh
 yXzg==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1776428290; x=1777033090; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cDMhKxQZOBW41kLl446l1EJd+PVPbWKyXfIiDzkTED4=;
 b=bRjPIkEH3YZ6zkrUU0L0mCtsbhdFrJVBkeldrhNPs+m0yr4+QpHPn95+YAuGQQ04yL
 iodv7FtvR6Rv5Yt0ODWguCFw33fI9xk8/IEzw3mWn0f6N0yRb+fJv0hyC6GLZ2k1I9Ol
 93fGeDfWVegZoaIE45zD8tur3DkV8ck+gjzYTbYJSDH3EhhaJNndY72DDzZXlyKVtTd8
 UMEvRzz6CUYx0bOmLMvjmci8puDEjDy2wudHvYBHwCgMf1gub7mB910kpCA67xudVmaO
 xMFFUDARZFvbSSJublaHazTHjkbnnJtuA1R4YEnxmH6wYVCpnbYhkOT+t2/mISqFrgIR
 CsDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776428290; x=1777033090;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=cDMhKxQZOBW41kLl446l1EJd+PVPbWKyXfIiDzkTED4=;
 b=A+5dKydLo0IZ3JDw9Vx0+7eumOrs1+LyKZwuBS5vKOjwBIt705j2LgI011tylWHiy2
 jdaMj70FtY4FPMFqP+I4kSiIlCo3a7DvS8y+W3E7cMoqxKZuIKnC1seyvz0homOkZ7hl
 oL2yUBPAm/aSFjrZMuapE+rYDc1VhPclrqkGv8Rh7n/hpqCvZJxPy9+KjQdODV7zKK/n
 ZlAekuG+0ymnbjUiXLKCg9eWJwdfI9V79wjAQwdZZIlQQqM+3FH8T3RXYAYRvS7f3+jL
 K0mZZbyfopdztYrhnF2hnGHGeMqFlY8XKfd9C+T+FklnlBtU0ACS8TrSPYIvoWdU0NAq
 h32w==
X-Forwarded-Encrypted: i=1;
 AFNElJ+A0c2UfZ1TxOw4ibFwYlYBnA1jgxMbnv1IfKVe2gJXFftoq9quhdCSPDxYHI9FWd3+iNEGCyW844Q=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yyy5KloKfkZgeNQpOZSBd/sCZD52ABXS0hMHFqeaxFDcS5Zkw1h
 wbL5afy+FiDwZw232pVyKexnkFZXIua/eU8/AcSfsz0ljOYOPRi/PcrvuLFqFGEjTRcSL7z6zYs
 NicSBooy+2qRDCJp3GHpL0tq5uQH73eI=
X-Gm-Gg: AeBDievGyCxi+y1lcz+gAvf8BvB6RQCtLPTKJ44vJ/ekB0rugLNJGa1o8UaZ6cJK00S
 uY4fciR7E7CuLWIMTsEyB5ganRBY0cfI+B/81svTvcEifi1TPxxtOj0n8yLeat9eo4ujsjKO5FV
 Ox4+n3br8aUoGg3B7qnrdbbTnC9eivBkl+Y87eHgYKTX56XelC88UV12+IBY/TB4Gaik9MjmAJt
 kxD58ZhR7f0EILVa+gKGB6hlCGnOfUMjyeIF0hELWxNJTS4e9dmgIq+owyO2wA+VHEhXzO+4BjV
 s8R6lkTZ8rQMea0HJg==
X-Received: by 2002:a67:e703:0:b0:602:afbc:ae78 with SMTP id
 ada2fe7eead31-616fb89ea6emr791230137.2.1776428289898; Fri, 17 Apr 2026
 05:18:09 -0700 (PDT)
MIME-Version: 1.0
References: <20260416-hpd-irq-events-v1-0-1ab1f1cfb2b2@oss.qualcomm.com>
 <20260416-hpd-irq-events-v1-6-1ab1f1cfb2b2@oss.qualcomm.com>
In-Reply-To: <20260416-hpd-irq-events-v1-6-1ab1f1cfb2b2@oss.qualcomm.com>
From: Pengyu Luo <mitltlatltl@gmail.com>
Date: Fri, 17 Apr 2026 20:17:26 +0800
X-Gm-Features: AQROBzDTVswzyUjJ6xkXYjkzbvzXgr8nk22CVU17PBSoxKtVUOrPnYmdya4d4B0
Message-ID: <CAH2e8h4rLZB3E8Rdwy_LtfwtwAKZCOgL18fRFVqGBx32Cm2N2Q@mail.gmail.com>
Subject: Re: [PATCH 6/6] usb: typec: ucsi: huawei-gaokun: pass down HPD_IRQ
 events
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Adrien Grassein <adrien.grassein@gmail.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Nikita Travkin <nikita@trvn.ru>, 
 Yongxing Mou <yongxing.mou@oss.qualcomm.com>, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 20 Apr 2026 18:05:58 +0000
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
	DATE_IN_PAST(1.00)[77];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:heikki.krogerus@linux.intel.com,m:gregkh@linuxfoundation.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:adrien.grassein@gmail.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:robin.clark@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:sean@poorly.run,m:marijn.suijten@somainline.org,m:tomi.valkeinen@ideasonboard.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:nikita@trvn.ru,m:yongxing.mou@oss.qualcomm.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:int
 el-xe@lists.freedesktop.org,m:linux-amlogic@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:freedreno@lists.freedesktop.org,m:jernejskrabec@gmail.com,m:adriengrassein@gmail.com,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[mitltlatltl@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linuxfoundation.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,ursulin.net,baylibre.com,googlemail.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,trvn.ru,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 24DAC43273B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 16, 2026 at 7:22=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> Pass IRQ_HPD events to the HPD bridge, letting those to be delivered to
> the DisplayPort driver.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Reviewed-by: Pengyu Luo <mitltlatltl@gmail.com>

Best wishes,
Pengyu
