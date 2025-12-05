Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88448CA7AAD
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 13:58:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E918910EB1F;
	Fri,  5 Dec 2025 12:58:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="dQklpZW/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C819510EB1E
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Dec 2025 12:58:50 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 5b1f17b1804b1-4775895d69cso10641395e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Dec 2025 04:58:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1764939529; x=1765544329; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:cc:content-language
 :references:to:subject:user-agent:mime-version:date:message-id:from
 :to:cc:subject:date:message-id:reply-to;
 bh=vvDpFJFk+V6cvoTCKOK8q907ac/jTowZtFGXPpMCI6k=;
 b=dQklpZW/XlH4Z0FHYhHOoCes3Nc8FCaN4uG/aqAOddTCJHmpalnub5g+J8t7jB982u
 E0HF1oqf9Y+m6z/D+KO/a53VnLMP+3yA8JV+CIhng9JyUvy0sttbvuSf2X1uZt3+OmUy
 tyhtK3ikMC9DSLZsszuDSylnoJdBoV9Yd6LNcmNV0ZYmFfIBCi83O+JfIYlMpptw42CC
 j26wR+hInG5yjzq6VZqtEWcwLML0llbgMZv7zsjkU2i+XCup8shbAqL3vhb5bvQy3s52
 H2LgXEFRpF55BD7EArBdm1gvYR3lOA1Viqlnf6Irf5gdnSgbglnTgZv0eBn+5sxu5JS2
 /7nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764939529; x=1765544329;
 h=content-transfer-encoding:in-reply-to:from:cc:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=vvDpFJFk+V6cvoTCKOK8q907ac/jTowZtFGXPpMCI6k=;
 b=knv+TpE13YOcASneSJZsY6ZynHjStBoryc2XgON8KOMAr+JrEAm1FQtWHcLLoeTpez
 IllN8D1DLSUiGOLNUWqfvBPxja9ynbEYgST+nBKQC+Dfz/LaICHrW/Flg2WWBYxc9o2+
 Hftjhrx5RW2BYT+LnsxBMY+kCDG1/corMye3EKQc0miYTB7WRKB9/M7bSO0oOcEMbipb
 eRk3PK0gmb0CNdZqLBtCgkUVn4PsQj63QQBJCYFehU16AepYgfxxEr+zqqG5aS18UMM6
 sz8QjYo5kaCTG/+sFEWd866Ic1ntFLWLZSk3ZGf5rv4rlXgx3s5LnSWP9Va7iNOSuBpt
 /VDw==
X-Forwarded-Encrypted: i=1;
 AJvYcCU9ik5w3PHyhz50pHqgwGi4Xly+Gyj9E2pIuHURiYj09v8oYCo+Fjz4p3OQcoopNGh265f45o8+avA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz0tX2+IjNpipBYhLdYqbk7nsE72b3SPFvS+t0XUy5gLB0IGSXQ
 Ted5pQZK6t70RlXBmGfHV9GnioXUJ1750Z7b41GC6DPurKH0Aitkrwo61XylML9oJGo=
X-Gm-Gg: ASbGncvVxe1ysTGsd1Ho3JdcuWph+qJspUgby7VPwwSLLdNrZoERS6986LVB7CLYy1Q
 ONlt9Nw3nSS/Cl/saiCFVUT090GU1ePdTFu3Wu4d68xNDz0JTwxmg75sFfK9hQxoX6PktlBVor5
 ccmkKF/iD0PscCiB3EmDlFBx8wX6J2E7XQVeYh8284h2+d9M/jt4lCLlJo3HhcFq7x3MeStInqN
 nLZOnJ7T3hJjDrqn6um6XmFsr3/dRN/Fs+UagK5eC9Hv9OuLTTRo57qQQ1kPktfOtgZnqUYIoGg
 Z+Z9OirdQ8NFg1kyPu4/TecAMN9gw6KM9XIEr/QtRySbFz1Gw9hcnys3XmCqsOZZY/Zt06Vv43i
 RFvQgcTVGFv8ucka29vq4jGgNYKXJoWixEOORJhI0TWNdWIml1eL63BNYAeblQ/n+443NnKChf+
 fc5wBKn0I7nCiA97n65MBgyb5i+Xc9rA==
X-Google-Smtp-Source: AGHT+IGleborKQCrbq8DmtASF59YZO0WpvBhiHKdLlUD/UBGnoL4NMp+YZWh4r36RAtoCvyopgKovg==
X-Received: by 2002:a05:600c:45d5:b0:45d:e28c:875a with SMTP id
 5b1f17b1804b1-4792f39cc82mr78538125e9.31.1764939529325; 
 Fri, 05 Dec 2025 04:58:49 -0800 (PST)
Received: from [10.0.1.22] (109-81-1-107.rct.o2.cz. [109.81.1.107])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4792b02e806sm59378815e9.3.2025.12.05.04.58.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Dec 2025 04:58:49 -0800 (PST)
Message-ID: <31cdf723-a776-498b-8664-4735cd76669a@suse.com>
Date: Fri, 5 Dec 2025 13:58:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] kernel.h: move VERIFY_OCTAL_PERMISSIONS() to
 sysfs.h
To: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
References: <20251203162329.280182-1-yury.norov@gmail.com>
 <20251203162329.280182-4-yury.norov@gmail.com>
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
In-Reply-To: <20251203162329.280182-4-yury.norov@gmail.com>
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
> The macro is related to sysfs, but is defined in kernel.h. Move it to
> the proper header, and unload the generic kernel.h.
> 
> Now that the macro is removed from kernel.h, linux/moduleparam.h is
> decoupled, and kernel.h inclusion can be removed.
> 
> Acked-by: Randy Dunlap <rdunlap@infradead.org>
> Tested-by: Randy Dunlap <rdunlap@infradead.org>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Signed-off-by: Yury Norov (NVIDIA) <yury.norov@gmail.com>

Reviewed-by: Petr Pavlu <petr.pavlu@suse.com>

-- 
Thanks,
Petr
