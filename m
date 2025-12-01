Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D56C9BC3D
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 15:23:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C43C10E66E;
	Tue,  2 Dec 2025 14:23:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="bpolJv1o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53EBE10E06C
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Dec 2025 19:01:31 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id
 ffacd0b85a97d-42e2d52c24dso956395f8f.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Dec 2025 11:01:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1764615690; x=1765220490; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:cc:content-language
 :references:to:subject:user-agent:mime-version:date:message-id:from
 :to:cc:subject:date:message-id:reply-to;
 bh=BzJeas8LPFGypXbCtT1+U1OrcCvq4t/9azfoNFwruuE=;
 b=bpolJv1oBEFLGTWAhzyUwlerufMW61mn9bsUwpHxZqdlV49JoDHfvOL0bTelN6ABBW
 cAQzEtdEkVFTeKGOtj+i3Je9VXgLRExY0ONb+OqW/HY7QVaGvgKBj8M+iyoHwKjBGCtG
 q4VnbFulSev2LsUvtkpmI2I4/m8xOH1iZK0vPdqEDzh6a1IFQzXeeYloK3dzItnyPaFG
 l5aR9oSl5clD/OXoSnnm6nycDQgUvQcuatmGT/ml9Uu4NdTaUSBBMqOOZ4l/RdA2aMIK
 XMZqBwf+YmmPWboSe5FWZg457ZpmjDx3W2rJARy6isEGB24Nbd+pPFRSd74E3ArGGmav
 ig0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764615690; x=1765220490;
 h=content-transfer-encoding:in-reply-to:from:cc:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=BzJeas8LPFGypXbCtT1+U1OrcCvq4t/9azfoNFwruuE=;
 b=SHY/qRoJzp6ychYyLUDgHtMQLtNCEPcZ1FrxBdd5msVzzkinQRU4AmW+DQp0XoUHFc
 fy2xvgBpgJRPCpjXJ3yaLSGqW4ny97oooqI1bSIKXA8HrUqyF54RiJdRlmVq2X874vB+
 VbIzx5cF874G3pN0CcdJUlcGAGLcWTPvCADBtBPwm6+p4yf+FJiBaqmOUGr/Jw10MCw1
 aeH/ECypownhdWK3f5MgToU7piKAavGve9QNMpQnGUuWHYsLyJvWaqdcx0OzVdak6rUT
 WfOTUuJj5K5+Ag1+PrI8VFvYgBywptzxreMXCbBYWCfCr6/Wg4Kv0offyod4R1Lji4hh
 HBlw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVHWkhIpDp9jQGnTIGFknPRhShMQTkBv0v2gn3Mg+7PIKYxR0ICCe0G039PBG+mUmEtM2g7GS1Ua00=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyXUAkZ23Rks6oWawjikbMg5TNUnk2Px16Nm5o5lP6DM/sTR7mF
 g6TAtqKurdxNO7IQhYPm5IjqMd5D6yN9uCCLCYYXCedQLbQnQMyxe4CB1aBD+ExN5yY=
X-Gm-Gg: ASbGnctqH1r0vUZxFKdmhO+3dn5y/AI1y0UKtwXcISLstoscVtZiiJ2OAURP4ZjZJs3
 IRXCgikRhJgEAIG5q/3F0JTQthQVgwWFNwRxDXBRjvs6M7z3vKTS/EgHwB6B0CJ/hiGt8Z3HS20
 ABNq+53fIIG71Abn7U6YN1PJ1oy5DlpN+MgCI2qXHpU9lHmfOxIEhHH5Na6G0qSGPWPhpDe4FZ+
 ja9Xs5PHxzCKTVM88hONe0A26pWK2K7YB406ABxqrXYa1Xl+6TS3ZuTjXK8+h/HrEsL+Kydx2e5
 2cYd0esfpj1EApdsN5gwE+XZtSfOh6UDH0qt4F9TXidxZEOY2/DLDTVvaBhzhdNtTjrCyMZW1Ch
 MQeJreoB9IRjU3+bVmkErBW5zySWgtLIByliuRMDo3bdlkmofAj30jyW99Km4AxYU47i8Xpk2kz
 +/PwxuwzUhtQKgtRCCNjZVE1B+Ba+Dww==
X-Google-Smtp-Source: AGHT+IH5FuCKsYMYPN+g8M+3ojhMVERFE+79odP4YJ9nnFhLMkIpgzWhG8yjjilqJh37A6fSs2EzPw==
X-Received: by 2002:a05:6000:2085:b0:429:ed90:91dd with SMTP id
 ffacd0b85a97d-42cc1ab6bf9mr43260446f8f.6.1764615688217; 
 Mon, 01 Dec 2025 11:01:28 -0800 (PST)
Received: from [10.0.1.22] (109-81-1-107.rct.o2.cz. [109.81.1.107])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-42e1c5c304csm27574737f8f.8.2025.12.01.11.01.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Dec 2025 11:01:27 -0800 (PST)
Message-ID: <c45058d5-d690-4731-85d1-434971c16f92@suse.com>
Date: Mon, 1 Dec 2025 20:01:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] kernel.h: move VERIFY_OCTAL_PERMISSIONS() to sysfs.h
To: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
References: <20251129195304.204082-1-yury.norov@gmail.com>
 <20251129195304.204082-3-yury.norov@gmail.com>
Content-Language: en-US
Cc: Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Randy Dunlap <rdunlap@infradead.org>, Ingo Molnar <mingo@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Daniel Gomez <da.gomez@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Danilo Krummrich <dakr@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-modules@vger.kernel.org, linux-trace-kernel@vger.kernel.org
From: Petr Pavlu <petr.pavlu@suse.com>
In-Reply-To: <20251129195304.204082-3-yury.norov@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 02 Dec 2025 14:23:18 +0000
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

On 11/29/25 8:53 PM, Yury Norov (NVIDIA) wrote:
> The macro is related to sysfs, but is defined in kernel.h. Move it to
> the proper header, and unload the generic kernel.h.
> 
> Signed-off-by: Yury Norov (NVIDIA) <yury.norov@gmail.com>
> ---
>  include/linux/kernel.h      | 12 ------------
>  include/linux/moduleparam.h |  2 +-
>  include/linux/sysfs.h       | 13 +++++++++++++
>  3 files changed, 14 insertions(+), 13 deletions(-)
> 
> [...]
> diff --git a/include/linux/moduleparam.h b/include/linux/moduleparam.h
> index 6907aedc4f74..4e390a84a8bc 100644
> --- a/include/linux/moduleparam.h
> +++ b/include/linux/moduleparam.h
> @@ -4,7 +4,7 @@
>  /* (C) Copyright 2001, 2002 Rusty Russell IBM Corporation */
>  #include <linux/init.h>
>  #include <linux/stringify.h>
> -#include <linux/kernel.h>
> +#include <linux/sysfs.h>

If you are removing the kernel.h include from
include/linux/moduleparam.h, I think it would be good to update the file
to ensure that all necessary includes are now listed directly.

The following items are present in moduleparam.h:

* __UNIQUE_ID(), __used(), __section(), __aligned(), __always_unused()
  -> linux/compiler.h,
* THIS_MODULE -> linux/init.h,
* __stringify() -> linux/stringify.h,
* u8, s8, u16, ... -> linux/types.h,
* static_assert() -> linux/build_bug.h,
* VERIFY_OCTAL_PERMISSIONS() -> linux/sysfs.h,
* ARRAY_SIZE() -> linux/array_size.h.

I suggest then updating the includes in include/linux/moduleparam.h to:

#include <linux/array_size.h>
#include <linux/build_bug.h>
#include <linux/compiler.h>
#include <linux/init.h>
#include <linux/stringify.h>
#include <linux/sysfs.h>
#include <linux/types.h>

-- 
Thanks,
Petr
