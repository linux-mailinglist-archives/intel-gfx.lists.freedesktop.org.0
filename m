Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FEF253148
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 16:28:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D30B96E141;
	Wed, 26 Aug 2020 14:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com
 [IPv6:2607:f8b0:4864:20::743])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3DAC6EA57
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 14:28:19 +0000 (UTC)
Received: by mail-qk1-x743.google.com with SMTP id o12so1957770qki.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 07:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cmpxchg-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=xk5PuaZ3h09SHfotxUuVEcyrelgIx31zSBn5gXVN9IM=;
 b=OF5msf8xUCmN3Dyr5IsRi7XjXqiObhM2vxPE0Wx6z73yQzocQZyXZsVr5xG0GxVewc
 8mLHzkVTThC3XbmKu2Oa0VF7cELOHQSCp/cqw+5vpnsG3VZHJvXAr+JOvrRE6R63MecR
 5eKN8lU7SEwLqjplk8sot+PoejbjUxEv8shqxLgH73nW3b2ndtpOW1dPSVhhoQHC5XxK
 PdD3gTbsv7nty7LeKQllTit9Ov259nDQt7vZU9yH1d6KPkehzqy90/rxUJUFDOLY8VkC
 R2+yVQgS7FhIexvx3CAo8IWgUcOwpwxqj9aIgTPNL0TCgX8H7T0yWCtFyDa7/BtXGVhx
 sMNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xk5PuaZ3h09SHfotxUuVEcyrelgIx31zSBn5gXVN9IM=;
 b=q/+QXANwNGqIETwU2gWGjorbw7yyVZRr62OaBMm7zPfMe4+j1luTyLPRH3Ec6oTplN
 LTsVUFmNW3LqoGYJJDlJDqE0tIg26ZejmKW2sVluVHI2L+Vk++eVjf/lj1j6FO7gaUp8
 ag31sR0tOW8q1gbMszvJOgFWi7pXp52r1ylcxOTJm+T79bg73R3pLWk9M+U/PzasFYCb
 /M+fkqiANUfW78jnTP2lwx8P2Mlh55KFJtgaYBewoz5oHYHpeS2M1RZFQ+abDol105hL
 9hKcDBBrgqDY6ovSk+3b+A/awI9Yh1Dl++FS0QNc+gI2HZJEoKfQDFB1LGsNNLq0bLqT
 sdfQ==
X-Gm-Message-State: AOAM532BUIyDxFvcZWeJZa6lm4MaqRl4tAlxnP4XI6hC7cAJBi0+7Dgd
 Iz5FhF5XXUYA6XpjFIfpHoXw9A==
X-Google-Smtp-Source: ABdhPJwTpEodJr7XmJ6vcGG/Qy1YoTKLrAkKtGQKZLh7Xqi5GwYySJHucKowPQ2UWvg/JqRFErD0OQ==
X-Received: by 2002:a05:620a:1257:: with SMTP id
 a23mr13959682qkl.207.1598452098795; 
 Wed, 26 Aug 2020 07:28:18 -0700 (PDT)
Received: from localhost ([2620:10d:c091:480::1:1f2b])
 by smtp.gmail.com with ESMTPSA id v136sm1814940qkb.31.2020.08.26.07.28.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Aug 2020 07:28:18 -0700 (PDT)
Date: Wed, 26 Aug 2020 10:27:03 -0400
From: Johannes Weiner <hannes@cmpxchg.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20200826142703.GD988805@cmpxchg.org>
References: <20200819184850.24779-1-willy@infradead.org>
 <20200819184850.24779-6-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200819184850.24779-6-willy@infradead.org>
Subject: Re: [Intel-gfx] [PATCH 5/8] i915: Use find_lock_page instead of
 find_lock_entry
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
Cc: William Kucharski <william.kucharski@oracle.com>,
 intel-gfx@lists.freedesktop.org, Hugh Dickins <hughd@google.com>,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linux-mm@kvack.org, Matthew Auld <matthew.auld@intel.com>,
 Huang Ying <ying.huang@intel.com>, cgroups@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 19, 2020 at 07:48:47PM +0100, Matthew Wilcox (Oracle) wrote:
> i915 does not want to see value entries.  Switch it to use
> find_lock_page() instead, and remove the export of find_lock_entry().
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>

Acked-by: Johannes Weiner <hannes@cmpxchg.org>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
