Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BF12E27BB
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 15:38:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C539389D63;
	Thu, 24 Dec 2020 14:38:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EB2E89D63;
 Thu, 24 Dec 2020 14:38:39 +0000 (UTC)
Received: by mail-qk1-x734.google.com with SMTP id 186so2210059qkj.3;
 Thu, 24 Dec 2020 06:38:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RK40eFPkHN0fCyZcrlLbpSMHC1OZYpxBaFoj3PPwtjA=;
 b=dBPYtOTm1iA9QYwbrHUu0dO9cnqAHSnm12GkI/NAxsBFOfKIekOgs6QNrHL5Lm/iK9
 rDoCpxLUkQYiegLkzwWDFGcgaM3A0QmrhElH1zPenbp5KMFeVyJWR/sMdfilq7o8sJPu
 sv/PtiVEqB6wrddhVKcfr43BrkO6ibfjfbphaZTQnoOXDUVxhXNKVCiilsRYwaA3fcj7
 lo2XBnOr7SDD4M0jA9/CDZR62zIq4GvRNSYRSjQm6k0qiAnpeCQI88Z0aVfN+XTX4RED
 r68UvaSU1wscuJlWydaurXzbCxnHcuym0GBwA/2B3tW3pigzQmYdWjGW5M0lwDyW0Ehb
 PucA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RK40eFPkHN0fCyZcrlLbpSMHC1OZYpxBaFoj3PPwtjA=;
 b=gzews5TKEkvQnlYZQn3t7Uqkb5ldP2MCXwyPqTWRZhHVzugZVpjTUM3NIt0MCLoqVO
 DAZOBQNHUM6Qa0whFMg3ylDDxDuktL12E3qADzaxAU179e/0+fpybmHXvmXR6CZabA2v
 +8T3JMckUegUN3dD9HtpnfcVhM8jllMB9KkcLwLJw/kGQl6VkaWTTwZpjmI0/PZmr059
 tedtY/sywamgPJTObK7DQjTr5dxfx0kovzC0tERPDgpnCGQEqWxgDSSsdEOkwCYgK9yL
 13Pw3GHRmAMAKqgZ/tY3ukENrg+xvrVHPpc6HkWs/BrothPN1LKPvFz4THen5av8YeTP
 I3ew==
X-Gm-Message-State: AOAM530p3uCknfFOWsda1Yne/vgtFOxmjliQl86o0mPIf1UoMZGA4cRi
 wh4iXfWBPqMzo1gV4J58xiFASh6I+r+Zlprpr72DKlf+
X-Google-Smtp-Source: ABdhPJwy5GG5G1Rm3+C2Ut5iDaO7wrsn/FeEonoL1jxagzayK7cu5Vnxmy3/ZstWsmdJ/Auj0VaUzCl8qpk93ML3g/k=
X-Received: by 2002:a37:a8c4:: with SMTP id
 r187mr30172532qke.481.1608820718743; 
 Thu, 24 Dec 2020 06:38:38 -0800 (PST)
MIME-Version: 1.0
References: <20201224110158.3560769-1-chris@chris-wilson.co.uk>
 <20201224124700.3778923-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201224124700.3778923-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 24 Dec 2020 14:38:13 +0000
Message-ID: <CAM0jSHNW46uGggOp6w0PYzUaaj1nHoa=vRN16rX17W44pf77-Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v4] i915/gem_softpin: Test
 total occupancy
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
Cc: igt-dev@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 24 Dec 2020 at 12:47, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Use pad-to-size to fill the entire GTT. Make sure we own it all!
>
> Suggested-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
