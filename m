Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5860A119AA8
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 23:07:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 440C56E9A8;
	Tue, 10 Dec 2019 22:07:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA2B06E9B4
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 22:07:21 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id z7so21750001wrl.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 14:07:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ptJt8UpVUt+TvsYxm4J67mpF+rXHgp/cv7qqisG2GRA=;
 b=MLqUObJ81drA0eXJYbMdW3P0zg6k8UvIqavv4+NEHMpFk4uQOUZM7AGGn3WZh9Rzhw
 3n7GQu7QWCgx5eJF+hEeogaeMdL8wEC9aboR36ORSxBVWW0QUGNUL9e2coaTG/3YiJf8
 EZcOhd0479ECh+LpXm5g9vv7B9kML+CXHgzdw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ptJt8UpVUt+TvsYxm4J67mpF+rXHgp/cv7qqisG2GRA=;
 b=jdX4nBt1YAe0AjZMrnHeitM79b/cDJqiiLz9sJkncOKLtk0ot9FM5O9FDEy+c0PDhc
 eur2qeZnw4Q1ynFH1k2Cuf9r8mvtwdDcaKNpVjd0mYlJEfaXyaaFljrQfbnIQf5a8jxa
 koT6lwUJ1bOSqOT0ViqI/jX26zJMGGTnsTAeFVwRw6PLhidCgbc4HB7uhP4EYDrrEwBd
 qLTGmhpk1RrCKWtPPtzP4eNrKI47t7XGX2709yPa4PpqUfMcEPHXxADvTy9nfzAU0YcH
 kzMThsRBdkyNYjN/D4GIjcWN6v4uw5Yv9uaUFa6qaV28iXQvGc4pqiYgAub/jdrTk7Y5
 7cbQ==
X-Gm-Message-State: APjAAAUK6yOyj5al6VbPqavUvx/2r17BqItwha5xThpYHTzLDaXSfh66
 OeiKMx8jgOxaiOiEurCnFS+0vw==
X-Google-Smtp-Source: APXvYqynFrQ1Q24pQQUBBH9773aGTAM/uCSmsEgciUNVh+e4sR+Ktxs67mwOB7Q0M250Fg24lexTWQ==
X-Received: by 2002:adf:db41:: with SMTP id f1mr5868055wrj.392.1576015640314; 
 Tue, 10 Dec 2019 14:07:20 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:564b:0:7567:bb67:3d7f:f863])
 by smtp.gmail.com with ESMTPSA id c15sm4822185wrt.1.2019.12.10.14.07.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 14:07:19 -0800 (PST)
Date: Tue, 10 Dec 2019 23:07:17 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191210220717.GW624164@phenom.ffwll.local>
References: <20191210123050.8799-1-jani.nikula@intel.com>
 <87o8wge4va.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o8wge4va.fsf@intel.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/print: introduce new struct
 drm_device based logging macros
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
Cc: Sam Ravnborg <sam@ravnborg.org>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 10, 2019 at 02:34:33PM +0200, Jani Nikula wrote:
> On Tue, 10 Dec 2019, Jani Nikula <jani.nikula@intel.com> wrote:
> > Add new struct drm_device based logging macros modeled after the core
> > kernel device based logging macros. These would be preferred over the
> > drm printk and struct device based macros in drm code, where possible.
> 
> As to cover letter, patches 2-8 using the logging macros introduced here
> are just the beginning. It's not trivial to write a cocci script to dig
> up struct drm_device * where there is none, so much of it may need to be
> done manually. But we could start here.

Can you pls do a patch for todo.rst to adjust the existing task to the new
flavour of favorited debug printing? If cocci doesn't work we can at least
throw random interns at this for starter tasks :-)
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
