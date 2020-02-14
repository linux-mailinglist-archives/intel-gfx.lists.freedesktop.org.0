Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D256B15F612
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 19:48:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F15D6FB8E;
	Fri, 14 Feb 2020 18:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com
 [IPv6:2607:f8b0:4864:20::d42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B59266FB79
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 18:25:37 +0000 (UTC)
Received: by mail-io1-xd42.google.com with SMTP id s24so11555496iog.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 10:25:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=p+/2TqURKPvSpeugfe6C3wJjPwbWulwY2NciPZyV/uI=;
 b=AqtsLZVppb4FBMhKvFmdzj/sEUGIHaFmU1Kptub1pQOzce18dxqGDKVZKyqUoTWT+c
 rCGT+Vp/VbZlfWrjZt3Zz6CzUtbO4jdPq0H1s6q+GhTBf4sva0XE+oHGUyAHlhssYn0V
 IbGJhrYN/4q6NkA9EBLHLWCqjA7cY5fsJUh0oKx4MMj4a42VN/7bWRU95QTIbHkfcjRC
 VpgVbJotcDF5z7Sopkx/DTY7kzVZOfgJMe1Fzo8WSedKIbX5lVyMYxk0f2jmCsKKJpK3
 LogTawzWpyCWZO98T8MqG5HjxWm7/GPfGGy52F92oyAQ6Xuoc5peSwxOJzefjWF9HJ0A
 BVQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=p+/2TqURKPvSpeugfe6C3wJjPwbWulwY2NciPZyV/uI=;
 b=TYtxXfnPNg6UKVBtWdGHAmEgoa9r0ZSqt8Lbs7uIwrad2AhCs/7y3eu24b+rtjUTYG
 psSp/uv97OpwCzyNAGXD79w97OuuHlPtbrDJqpdyouRPa4EW+2lfHXZCndAqnTrRIb0D
 UoRl4Q0SHr8ywOj/f0HqPvKpEkaB33Jmoo+Ln0pWeNw6aNufzrJQurvM43PVm8l6fhM9
 dSt9dgRB37OwPvb0U1kHMyPNOkQ4/fdPS0im+7vBVMcs9CBsoVFVlOtTkqDwJmFFZN4m
 PEH6ZkQOy6NrLaDDZJVWKRTJA/t0YD9xNlQEob48PXBvDedO/2LVBXWoUIQvsV6RPkhs
 tTsA==
X-Gm-Message-State: APjAAAWwiFhYx0y2iAImi94IiAKaBznSZuYysLhNnfCil41UpTLPGxY9
 /r1wtHGJ8RAXlL5BMsJCSs1Qkg==
X-Google-Smtp-Source: APXvYqxPTHB9pGH0UWI4KlTIIlvrCQHD6qLuTn74bmUmAXk05gY8YgiBuNzdqB2w8ltZD5UxwmI/fg==
X-Received: by 2002:a05:6638:1009:: with SMTP id
 r9mr3753008jab.58.1581704736816; 
 Fri, 14 Feb 2020 10:25:36 -0800 (PST)
Received: from google.com ([2620:15c:183:200:855f:8919:84a7:4794])
 by smtp.gmail.com with ESMTPSA id i11sm1674221ion.1.2020.02.14.10.25.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 10:25:36 -0800 (PST)
Date: Fri, 14 Feb 2020 11:25:34 -0700
From: Ross Zwisler <zwisler@google.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200214182534.GB24285@google.com>
References: <20200214015038.122913-1-jose.souza@intel.com>
 <20200214181346.9957-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200214181346.9957-1-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Approved-At: Fri, 14 Feb 2020 18:48:18 +0000
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/psr: Force PSR probe only after
 full initialization
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 14, 2020 at 10:13:46AM -0800, Jos=E9 Roberto de Souza wrote:
> Commit 60c6a14b489b ("drm/i915/display: Force the state compute phase
> once to enable PSR") was forcing the state compute too earlier
> causing errors because not everything was initialized, so here
> moving to i915_driver_register() when everything is ready and driver
> is registering into the rest of the system.
> =

> Also fixing the place where it disarm the force probe as during the
> atomic check phase errors could happen like the ones due locking and
> it would cause PSR to never be enabled if that happens.
> Leaving the disarm to the atomic commit phase, intel_psr_enable() or
> intel_psr_update() will be called even if the current state do not
> allow PSR to be enabled.
> =

> v2: Check if intel_dp is null in intel_psr_force_mode_changed_set()
> =

> Fixes: 60c6a14b489b ("drm/i915/display: Force the state compute phase onc=
e to enable PSR")
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1151
> Reported-by: Ross Zwisler <zwisler@google.com>

Tested-by: Ross Zwisler <zwisler@google.com>

> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
