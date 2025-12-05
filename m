Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B40CA7A4A
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 13:51:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A109210E0F0;
	Fri,  5 Dec 2025 12:51:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="d1Q+ZdR1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23E1010E0F0
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Dec 2025 12:51:34 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id
 ffacd0b85a97d-42e2e50c233so954304f8f.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Dec 2025 04:51:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1764939093; x=1765543893; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:cc:content-language
 :references:to:subject:user-agent:mime-version:date:message-id:from
 :to:cc:subject:date:message-id:reply-to;
 bh=9MzpLnNl9vvJw+1q+qMx3EcEk0gQb02lA2SLfXsZdJo=;
 b=d1Q+ZdR1mg4W0SpgkfnxiiQYxEQr3TbWvP4v8U/pmIrMnGk4hqK1XPXQhexkJtopZG
 Ec89UrSDogNEGDlJTqMR1A50+/N0vQJ9aRsVda9n4pPwNxPx6d8LK3jDSTsZdae3coya
 patFYdLWbMNdEtDQqdbaBejcLaA6Lhjb0R7C8U0IOf3QbKISYKzBiWhGHDG9szINXOUa
 oqgf+8SrCfkBb/A4hciD+xYuBz3ygD79CHfSEgnkTeBgJTvcrbZi72R+NtqcK7gJoxFJ
 96WrKJGSBQACGd8TwKHVUOZ/24GxrUQzPbdZNhKRwpQHtwQhaS8WZ2uMf2wnZIuyI9/p
 bL/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764939093; x=1765543893;
 h=content-transfer-encoding:in-reply-to:from:cc:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=9MzpLnNl9vvJw+1q+qMx3EcEk0gQb02lA2SLfXsZdJo=;
 b=I4V8uAt7rqIt06m4mFn1z7exOijX0RfafajFZqfB6qDlnyKJoL+oQqyrw7GkqMAHQ/
 VRcp5sW42x7xfvA8pq8L18pa386xLr1whEArJmjtrU1yKKZqIr9eRyfF64tNUsFsyW63
 ef0GfSdTdEm1wWoCGf3BvrtMcvqYgzzi3cjc3G5q0JTg5v5T0mPy1KI7wUQkXJXxEWo3
 GZt+4XIzg1iKUqSHMRJ79iPUUkKKHwBV3sx/9X6S/lfsa1r+g+wDBfc+QenlzDgwqr+o
 Ttj43OjyNG/M+EPGBmBiuXjfP4kP9pT9Sh5h7neJPTEcp9dHp5adeQy9W5l4XoEjoXeP
 Tr+w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUrh78SofcZqpEWDkLijYr/6GuK7m8nJLC71cvBlCfG6hqEpT0zu9dhTWgdXWpLkegwSOB5jcs4xGE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyBO79TZoPUxLGGP3FuyKDfPatwKeFIuOMPOhe5Qe7aU4eS+RB4
 /pxLHPqIAsx8yf+EdtlT06+nOSsNQx/XX8uASWDx6mcPZuxIHSs+YoQMbU/dTUSjC20=
X-Gm-Gg: ASbGncv3MDGKUBxqdwM+ZFWOxTPtZDETqpxGF8e4XDhNr2QzYU36z3IAG5b9FBHLcxg
 5/HJR8RYPTivRGhyKkWXrU/8AV7K8sBMhWqXXO+zaVt+KAQp4F3tddZaqNlkd7Snjr9NM9vhFoT
 1DO361ZnancpK9h5jEK4HBiVnK7aaW5ATBFQ6xNhtquDdr7WjwT9c1r7gDhOkdoG9cI8Wn02+TV
 09+FOxS2q7vRQj93hIVb1Ti7NvcoCVmzCjn++B2i1w3s4UUpI5h9xWVdkNcFs5K1yDKi6S47gYc
 FKrmuoZcjqetPOommfgwu0wEdFG4U9fQ7/B9NCmDhOd07590fPt1ILrrzbBmTPp1LT/tgcgru4I
 L0y1z36/uK17Thy0DTah6m+jMDBTx1msFnY05nma4VTBBnrtJ+N1zWI9y2Cc/CmI8SnI8G5aHaO
 pBW/hioW2f1Qk5AuJ0+V5OrV5CBi3oOg==
X-Google-Smtp-Source: AGHT+IFF2YOP1yOKobPpwIABM0ALpDzm5Ux8rx9pH99/QlqE0Zty3TPaCCS2gXj6vJWnXG2wdtohyQ==
X-Received: by 2002:a05:6000:18a3:b0:42b:3272:c4a7 with SMTP id
 ffacd0b85a97d-42f731a2e9amr10500166f8f.29.1764939092550; 
 Fri, 05 Dec 2025 04:51:32 -0800 (PST)
Received: from [10.0.1.22] (109-81-1-107.rct.o2.cz. [109.81.1.107])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-42f7d331af5sm8375239f8f.31.2025.12.05.04.51.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Dec 2025 04:51:32 -0800 (PST)
Message-ID: <14cffb34-1c56-4119-af76-e8ead8099a9d@suse.com>
Date: Fri, 5 Dec 2025 13:51:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] moduleparam: include required headers explicitly
To: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
References: <20251203162329.280182-1-yury.norov@gmail.com>
 <20251203162329.280182-3-yury.norov@gmail.com>
Content-Language: en-US
Cc: Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Christophe Leroy <chleroy@kernel.org>, Randy Dunlap <rdunlap@infradead.org>,
 Ingo Molnar <mingo@kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 David Laight <david.laight@runbox.com>, Andi Shyti <andi.shyti@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Daniel Gomez <da.gomez@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Danilo Krummrich <dakr@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-modules@vger.kernel.org, linux-trace-kernel@vger.kernel.org
From: Petr Pavlu <petr.pavlu@suse.com>
In-Reply-To: <20251203162329.280182-3-yury.norov@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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

On 12/3/25 5:23 PM, Yury Norov (NVIDIA) wrote:
> The following patch drops moduleparam.h dependency on kernel.h. In
> preparation to it, list all the required headers explicitly.
> 
> Suggested-by: Petr Pavlu <petr.pavlu@suse.com>
> CC: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Signed-off-by: Yury Norov (NVIDIA) <yury.norov@gmail.com>

Reviewed-by: Petr Pavlu <petr.pavlu@suse.com>

-- 
Thanks,
Petr
