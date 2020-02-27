Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0031725E0
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:03:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B63D6ECDC;
	Thu, 27 Feb 2020 18:03:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com
 [IPv6:2607:f8b0:4864:20::142])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DC416E506
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 17:54:21 +0000 (UTC)
Received: by mail-il1-x142.google.com with SMTP id x7so311920ilq.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 09:54:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=weS2TP9Gh86IfYFaOQsRr+sV2ahg+AjPbnfPPKDS+fc=;
 b=rQVzg1ZHmNVIZ67Vu/sbXgK5Ed0+esjTebWRqqlntXBX9qd4ylJ+14P1HEkggV1r1Z
 8PHgYJ9/Er+gjNh0bVU1u+eCbBjTAF9sqiwVj/5dnnarL6dzm6FfZE1hzf+v3Qa+xZtW
 T5mNpT4YvseScuo7b9UMEO5pqVqbt8aAENupBqT6T0/Xe+C+kbAfvBS7PKmRONvwj6QK
 MGz0b6NA/aGyhzgHczv+OCh+7QFCJzBpr266bZ37uoYZITJeGbs3zKhVklOxmefH6/wr
 MHn6jTuFHj2Mv2J9JngSgZRy83+Z+X6eRHxxe5UVKewu4o/d5wqGdNlxVYapT5bIwCxy
 LVQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=weS2TP9Gh86IfYFaOQsRr+sV2ahg+AjPbnfPPKDS+fc=;
 b=TEHUNXnJI7+tAuN3YQotvGFaobB5CWMga/A4aVak2cqhgC+CxLQIVJl/ayTQWbaxcJ
 IyMkYKayN9AG+fcRJnwBGKlhR4FXhQ6cAQUrlKTZouaiCfRRpZ0YGvR0vu00G52YEOl2
 GfD/CNKef1WefFjCDnxvV5KWKP6XUsxy9VJwA270Ma1+rjcPQA3OJNWBU0sfdKhvp7OV
 xYWVXxCdy7dNG47Wpl60IYGz4gE3pfSYGM430k/KNQksY5gomUFzQoCoicCeDzoSk4Vc
 9zJZLakP/Q1aCBC47FhUJHlYfxDHVdYC2MPCdfI15gQjw8KjtQvUhs7PzzKP9S6ysyYN
 tyiQ==
X-Gm-Message-State: APjAAAVOdyaUpi1Cw7dsg7y1p44CC5UoQBWc3s7hwkjVEsis0loJ8knr
 Ypj6vUrXsd0l1BsN4h3sFq6Yrw==
X-Google-Smtp-Source: APXvYqwNITAoGM687vy4sIwjillt8MmPDDRFBoIta6/iSZsjPJwGXJWSNC6aKSfw9nV7uCNCUBeKkA==
X-Received: by 2002:a92:c986:: with SMTP id y6mr478197iln.186.1582826060146;
 Thu, 27 Feb 2020 09:54:20 -0800 (PST)
Received: from google.com ([2620:15c:183:200:855f:8919:84a7:4794])
 by smtp.gmail.com with ESMTPSA id y3sm2061664ila.78.2020.02.27.09.54.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 09:54:19 -0800 (PST)
Date: Thu, 27 Feb 2020 10:54:17 -0700
From: Ross Zwisler <zwisler@google.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200227175417.GA8007@google.com>
References: <20200221212635.11614-1-jose.souza@intel.com>
 <87wo88qicd.fsf@intel.com> <20200227164355.GA241728@google.com>
 <87o8tkq83l.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o8tkq83l.fsf@intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Approved-At: Thu, 27 Feb 2020 18:03:14 +0000
Subject: Re: [Intel-gfx] [PATCH v4-CI] drm/i915/psr: Force PSR probe only
 after full initialization
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 27, 2020 at 06:59:42PM +0200, Jani Nikula wrote:
> On Thu, 27 Feb 2020, Ross Zwisler <zwisler@google.com> wrote:
> > On Thu, Feb 27, 2020 at 03:18:26PM +0200, Jani Nikula wrote:
> >> On Fri, 21 Feb 2020, Jos=E9 Roberto de Souza <jose.souza@intel.com> wr=
ote:
> >> > Commit 60c6a14b489b ("drm/i915/display: Force the state compute phase
> >> > once to enable PSR") was forcing the state compute too earlier
> >> > causing errors because not everything was initialized, so here
> >> > moving to the end of i915_driver_modeset_probe() when the display is
> >> > all initialized.
> >> =

> >> Hmph, really not happy about the placement here. These are high level
> >> functions, not a dumping ground for random feature specific hacks. :(
> >
> > Should we just revert =

> >
> > 60c6a14b489b ("drm/i915/display: Force the state compute phase once to =
enable PSR")
> >
> > and try to land a fixed-up version in the next kernel cycle?  The curre=
nt
> > state is that my machine is completely unable to boot because of this i=
ssue,
> > and I've confirmed that the above patch reverts cleanly and fixes the i=
ssue.
> =

> IIUC this patch, already committed as df1a5bfc16f3 ("drm/i915/psr: Force
> PSR probe only after full initialization"), fixes the issue for you. At
> least the Tested-by says so. ;) So we should just go with that.
> =

> I'm just being grumpy about the aesthetics of the implementation. I've
> already incorporated some cleanup to this in an existing refactoring I
> had [1].

Ah, sounds good.   Sorry, I thought the fix hadn't been committed yet. :)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
