Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BABCCE022
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 00:56:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09B5D10EC2B;
	Thu, 18 Dec 2025 23:56:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ly5SS+kA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4774410EC22
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Dec 2025 23:56:32 +0000 (UTC)
Received: by mail-pf1-f175.google.com with SMTP id
 d2e1a72fcca58-7e2762ad850so1337106b3a.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Dec 2025 15:56:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766102192; x=1766706992; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=QZalkBGMZvwmDVV1ya5Lu+/scueeEmPRx1djh9JCuvk=;
 b=ly5SS+kArO5nYwXj9/CRHCz5yvBJils3Bb+/qhUbZhXa4Hv98o+mx6GE8j9sCtUVy4
 +wf+FMbAgGm2lT6BF+3QTloZB5OWoDHM6xUi2O+ZlTKf+FRXcVKjRIq56TxC8ltb1U1t
 nGUQ9MbtzEkmid1M09Cpjw8v7gapBpohkEPqFxe9KAnxOTiYrFDlNa2mMKYyyvXTvdUB
 Y0z/RQH1ZDMr0LpQ2sAfkpPW5qd6tnsHQzSnLn5rniYB6N2uMavee3mGfn/EXysQXlAy
 xRHWgKD1dEsj7H4MQ+eSX/5lPgnogVelWwlFG7bIsASoadUj6MXSXub1XP03MgyLDqKV
 kTGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766102192; x=1766706992;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=QZalkBGMZvwmDVV1ya5Lu+/scueeEmPRx1djh9JCuvk=;
 b=sTcu+ztkG4dVV3n87G2U6sK9NDiaZFGfHJb97+0yqTDDE8Ltj/HV1DaAO3h4H6QNiG
 R+YgMVGflxsqGWR5Wh0mBJceWNXhzuu+64h7cahf4vHRZ9zqCtU/PVjRewh0TiQo5JJ7
 Y7BvD24MNLByjqJfFxhe3XUzVb9uHGgLcOFedLxjiEGB/mwar/Lut5bDoUBXNrlQ628Y
 KfTdRLQPlPyhS3NS7ZdC7mKayBhl3qGqgxVe6d2PgIF50xIZhwla2QBhN7f3exl+fVoY
 fm62KAyjRfEzipytpvrhgo0xFAiiOP/BAop6RruLl9gkznV0Y8rp8Ek2l88WShCGKwcr
 +47Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCX0mIzdhLUvOZJVHVA5yExi4TQyIrP5S4optHjrD1I0X4hST/ASqqNeIT0t6FncAjN8/gGN5n3NHOw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzVZIzknDMm3niRU+7Efz+vh0997jbKyVjtXi3zuoZk9TWMDCud
 oEIvB6kGLHOKPmp6Zc4SPf8iQtsmJwpIptdWHKqGdxJICF01yIla22DUJat6Ng==
X-Gm-Gg: AY/fxX7fnRaKIR3KPADhdbLibW4blXTnGus0hqhcxC9oNUvczxdLwlkN5+mzn5ZCOrs
 G1CTIg2Tbg66Tk+Vgp48epxGi5nHqC7/KebcbH7X3WJzEcpd/AQWusmizfFlF36dSUIdrS/gJjx
 XfHYIzlXYfSlAgKU4STXd/lO984XwPuvTzZDDQZhOagDNHnO5FpCJhiedS3I4GgzjgVLs+FRwVT
 +DXYx6/IOpK4yPeZLlaB7KuxFJrRokmbQJv3JlvTONTrU/MHN5DXmpY3DdAvNEBn9j1SIP6q9W8
 hAvPRRDAhPV/7CwPBOeapIU1haBc2HVPZsxAUa9r5/Rq6s2pcB/p8NZsmLZCkaSoY0Avl/fCyUU
 848vq6gDnYvQOxfaPq599CfwVBF9gbeLDucijjEq15zmlAgfp2Gnh31hK88ZWP449Z/sZCPImFY
 m3AMn83Q==
X-Google-Smtp-Source: AGHT+IF21Ecc6Jc0533/8GWL1yiDmEnXNfeJkD3kNuw+xcQOMYUm7A56eghLjVuqVAs0d9Em+kHEaQ==
X-Received: by 2002:a05:690c:7012:b0:78d:6d62:f93f with SMTP id
 00721157ae682-78fb3ed3062mr7661257b3.8.1766094799618; 
 Thu, 18 Dec 2025 13:53:19 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:c44b:debe:992d:e6a])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-78fb44f01e5sm2294447b3.35.2025.12.18.13.53.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Dec 2025 13:53:19 -0800 (PST)
Date: Thu, 18 Dec 2025 16:53:18 -0500
From: Yury Norov <yury.norov@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Randy Dunlap <rdunlap@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Christophe Leroy <chleroy@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 David Laight <david.laight@runbox.com>, Petr Pavlu <petr.pavlu@suse.com>,
 Andi Shyti <andi.shyti@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Daniel Gomez <da.gomez@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Danilo Krummrich <dakr@kernel.org>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-modules@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
 Kees Cook <kees@kernel.org>
Subject: Re: [PATCH v3 4/4] tracing: move tracing declarations from kernel.h
 to a dedicated header
Message-ID: <aUR3zqq4-qMV_bFh@yury>
References: <20251205175237.242022-1-yury.norov@gmail.com>
 <20251205175237.242022-5-yury.norov@gmail.com>
 <20251216161316.45b3f19ff0ad482018137189@linux-foundation.org>
 <55ceb7bf-0fe9-4edc-81c2-d51366847eec@infradead.org>
 <aUN8Hm377C5A0ILX@yury>
 <20251218123349.35339242@gandalf.local.home>
 <20251218124326.22334325@gandalf.local.home>
 <aURlK1gpCrfLEKN9@yury>
 <20251218162542.476009db@gandalf.local.home>
 <20251218164103.3c535de3@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251218164103.3c535de3@gandalf.local.home>
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

On Thu, Dec 18, 2025 at 04:41:03PM -0500, Steven Rostedt wrote:
> On Thu, 18 Dec 2025 16:25:42 -0500
> Steven Rostedt <rostedt@goodmis.org> wrote:
> 
> > On Thu, 18 Dec 2025 15:33:47 -0500
> > Yury Norov <yury.norov@gmail.com> wrote:
> > 
> > > > I don't actually remember why I had __trace_puts() pass in the size. I
> > > > could change it to:    
> > > 
> > > This is the best approach. I'll schedule it for v4. Would you like me to
> > > take it as-is, or you'd send a patch?
> > >    
> > 
> > Let me send an official patch.
> > 
> 
> You can find it here (I Cc'd you too). Feel free to add it to your patch set.
> 
>   https://lore.kernel.org/all/20251218163739.5605f9ea@gandalf.local.home/

Thanks, will do.
