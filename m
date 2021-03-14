Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A4833A714
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Mar 2021 18:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2095A89AC9;
	Sun, 14 Mar 2021 17:02:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0208689AC9
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Mar 2021 17:02:23 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id b18so7496155wrn.6
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Mar 2021 10:02:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=hLKxLXWbjSR4VIH6hgY1Jn4F/lOk/IcGXE9kZXwAHaQ=;
 b=Qr7xxjxHhsMqBolQEG+POE3r5wVV4ejrusP/hrhTk0GQXhEyCWN4WGiR24WcRQFUB9
 F/ZeDGz+RWE0iL0EeggHYwTJ0avJ9hiI18DWTl6QThL3feGkESg12doyycSLrcx4NyB+
 81/p2VzSjscoedgGVkyjrfmFQzHC1XlITAvdiIYJDzlEpnvgschn8VTycrf9e7jJigyK
 L9Am0qbzzfF7cP/pzI7ebCBOdPvIR3+OH4gZMMdAfeMRvBKBNgLzPxcOcTvmdOi+NCCO
 2+QDBVvlvlhEOKBc1pqmHFDdOZCALe8rzjDQrhPx3Vc1dmaTaSIGRDAAueOMr74+6iSD
 yB5g==
X-Gm-Message-State: AOAM533FiCBsTRaAusduJR7MJvMt8JR+EWVQx8p+GdPa9DjJyboCHoik
 Zw/xRVMx5R/MQWJjamhSKlo=
X-Google-Smtp-Source: ABdhPJxAJSbYJeaOvHvHy0JKtCZL5CsBBk7xtDV9hQfRMIdbP68Le/guHd8QDLkgET/DpQxcFEUM4Q==
X-Received: by 2002:a5d:4905:: with SMTP id x5mr23642730wrq.201.1615741341489; 
 Sun, 14 Mar 2021 10:02:21 -0700 (PDT)
Received: from ?IPv6:2003:c1:1f4f:ba00:f585:f458:b5b5:1f70?
 (p200300c11f4fba00f585f458b5b51f70.dip0.t-ipconnect.de.
 [2003:c1:1f4f:ba00:f585:f458:b5b5:1f70])
 by smtp.gmail.com with ESMTPSA id x8sm15687266wru.46.2021.03.14.10.02.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Mar 2021 10:02:20 -0700 (PDT)
Message-ID: <fb87d5e919473ea48805a6d641ccc1570d13a0f6.camel@linux.com>
From: Mario =?ISO-8859-1?Q?H=FCttel?= <mario.huettel@linux.com>
To: imre.deak@intel.com
Date: Sun, 14 Mar 2021 18:02:19 +0100
In-Reply-To: <20210314152536.GA3286105@ideak-desk.fi.intel.com>
References: <769a4194df25ee2432284d8f10f876a17cc94fec.camel@linux.com>
 <20210314152536.GA3286105@ideak-desk.fi.intel.com>
User-Agent: Evolution 3.38.4 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [bug report] drm/i915: Computer does not shutdown
 since commit fe0f1e3
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Sun, 2021-03-14 at 17:25 +0200, Imre Deak wrote:
> > I used git bisect to find the commit that causes this behavior on
> > my
> > machine. The result is: fe0f1e3bfdfeb53e18f1206aea4f40b9bd1f291c is
> > the
> > first bad commit (drm/i915: Shut down displays gracefully on
> > reboot).
> > 
> > I hope this is the correct mailing list for this issue.
> > 
> > Let me know if you need more information or someone to test it.
> 
> Could you try:
> 7962893ecb853 ("drm/i915: Disable runtime power management during
> shutdown")
> ?

This seems to solve the issue. I applied the commit on my current
kernel tree and now it's able to shut down properly.

Thanks,

Mario

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
