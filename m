Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5305D154D96
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 21:56:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F86C6FB4F;
	Thu,  6 Feb 2020 20:56:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com
 [IPv6:2607:f8b0:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 586526FAD5
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 17:36:16 +0000 (UTC)
Received: by mail-il1-x141.google.com with SMTP id f10so5788101ils.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 06 Feb 2020 09:36:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mA17Gl1c+YPFhn/Fwyc8fsh1Q06AIKQqL8JeuzqFsOU=;
 b=JzvXjsbJ9p2AuTH2qWgGkkrtHoMlLx6lpXKkdPLxN75/BnrfFBLugAWzTZv3DLDh3Z
 SUe74putfVPzrOO8qH+vl4xIR10iuX07xBvAwKFIGQszHi0eIvr7RPbGt74xvfScH2Dp
 CL+ASQ8PlyFpXkRo7IoIweAJ70V6aL65ld+rfXqUYiBz3PO9EgbluTrpLM37s46VMDxl
 x46ccuEAjvTAEUhRZXkNoOYhcMN+jLbpKFJzQPga4Mue6XdqGvKByC+ifGBpNhA9X273
 waRJAIztdTLG7ZlVveDELBT+qJuWn7AxWTlhp4p8OuHaqHstnEectFMjTMAOq3OvU8s9
 9NPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mA17Gl1c+YPFhn/Fwyc8fsh1Q06AIKQqL8JeuzqFsOU=;
 b=HIVImhO93mog929II2WJEipmXdauzvF2oQLSjz/hZ4kVi3ganomGnJpEVCW9VOdnid
 HR9+fwUjHZwOsiCUY3Yvsek0Enn0OAjQ+4nnENCgk0zcU+FWc8cNuLSX8v1fjZHiWrma
 hz+wGxg0G2f9ydYJIiziMRru2EISkWXWU7O4EK4nbSNGQSvwuuNDCzfartZIg2LSgMN/
 ok0ixGcz1gfcfZB/dScIHGI85lIgV6d8XZWErRFhFrWXPVrm5aSdEaZdQpcOXFdjFnPw
 0LuhSNItIzzgVz3JeC8zUqn5ZupVyTk93evX/kzUftzPcksROReXSuFwitnaAeLkIESk
 31Vg==
X-Gm-Message-State: APjAAAUPgwtXWLI91PPUsSAeMfOM5vBUKmHKXQMt4ApdTP9Rk+EF/Gh+
 2rtCsTjxwsNyOw1kxzYwdVRX1A==
X-Google-Smtp-Source: APXvYqxO3IFYtyWuyc6A2GPOe1iPrV0CTIabE9SempD4tOaSYKoVwARRaBhlZJRGb6uMkRPdQ3L7FA==
X-Received: by 2002:a92:9507:: with SMTP id y7mr4864176ilh.243.1581010575472; 
 Thu, 06 Feb 2020 09:36:15 -0800 (PST)
Received: from google.com ([2620:15c:183:200:855f:8919:84a7:4794])
 by smtp.gmail.com with ESMTPSA id y3sm114819ila.78.2020.02.06.09.36.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 09:36:14 -0800 (PST)
Date: Thu, 6 Feb 2020 10:36:12 -0700
From: Ross Zwisler <zwisler@google.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200206173612.GA53300@google.com>
References: <20200106152128.195171-1-jose.souza@intel.com>
 <20200205230101.GA152052@google.com>
 <617e83f393794778d5a4a0549b4369942e4814a7.camel@intel.com>
 <87pnesnfx2.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87pnesnfx2.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Approved-At: Thu, 06 Feb 2020 20:56:00 +0000
Subject: Re: [Intel-gfx] [v3] drm/i915/display: Force the state compute
 phase once to enable PSR
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "s.zharkoff@gmail.com" <s.zharkoff@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 06, 2020 at 12:55:37PM +0200, Jani Nikula wrote:
> On Thu, 06 Feb 2020, "Souza, Jose" <jose.souza@intel.com> wrote:
> > Hi Ross
> >
> > I'm unable to reproduce this issue, could you share the complete dmesg?
> 
> Please file a bug at [1] and attach the dmesg there.
> 
> BR,
> Jani.
> 
> 
> [1] https://gitlab.freedesktop.org/drm/intel/issues/new

https://gitlab.freedesktop.org/drm/intel/issues/1151

Full dmesg of failing boot and successful boot on HEAD~1 attached, as well as
my kernel config.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
