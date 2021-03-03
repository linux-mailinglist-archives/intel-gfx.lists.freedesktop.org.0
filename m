Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCBF32ACA5
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 01:16:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B89F26E2DF;
	Wed,  3 Mar 2021 00:15:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BD786E2DF
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 00:15:49 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id b15so3045207pjb.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Mar 2021 16:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=15Da8L//sZLVa2Y/ktpbgOliSO5Jn4xUavXDRLvhsOA=;
 b=Y5g4XHk+/UMlDKjZ/drhzQVkaKC12cxaqlcEN1kUgbDrDN89JycT3r3FP5IJe1wyeO
 LSZ2FE1EohmUkAyFj8hmVQ2cOFES7691g4VWQXEsL0jaBS/SsAw39NrqQRv4VQg0eZGV
 oCcUbUy00z4DxvkBbHpurG2clTHdeh3hnUmRUpIP3LL0fhrqzILWANTwHUun76msgjzn
 pk8SMEPz9peTtkl+xot7dVYWGSpB1+/3GR7PzMIsQFW0OgUMNQC4Facc+hVHVP4kYEGH
 PJlYbx+a8w8Jq8AYM/YMtL8/M+zW236abBnVGYRWxlOqwVueb3b3jWdsEhJA3Qeb+xVG
 FPng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=15Da8L//sZLVa2Y/ktpbgOliSO5Jn4xUavXDRLvhsOA=;
 b=NPTjwkUsW5GQQuqBokVEZFvNYOlaWQGrenYqtgSY4m9itkIZ+Y5de9AmhgODW6c6XW
 LcC6SGj795fK5KC/gt7pKh223IOOon06hkOvIjNjAAF7oPtgNnIRTJaZ3A3LzD0FJwV+
 FT6f2MENkJHORqTI60UXY4C9yGdgXKo0SCjEZbl3OALSpDaX/kRivoxJv4ZKZKoEXS5D
 13oUZGf6gsEAh2ibu4MLfv2HymOtIUQljJklKQ9lwht7j/PiWVv7o0jFP/iQwBnYF1df
 1bsFXan5PNciSSAOvV/mWRN1Qd3yeijntyN/eRr6i7YaVBf4gaCFFJh8oI5JEIfdhaHD
 NU7Q==
X-Gm-Message-State: AOAM531NN9R5htHIERd+5wevOBsec1Gu04jc93Ze+B8/w8RRW+SC/sY5
 zm0XoEqRI/kEnroe4luC5sbxILmp42o4xA==
X-Google-Smtp-Source: ABdhPJxQQNJn1d1rYqHGMSy/uUQk0iR29GqxUGZaqbZqIds+6YpZ2XdzWXgb6/fQSwghyGrdJbzFng==
X-Received: by 2002:a17:902:dac9:b029:e4:b52f:1d38 with SMTP id
 q9-20020a170902dac9b02900e4b52f1d38mr466469plx.15.1614730548695; 
 Tue, 02 Mar 2021 16:15:48 -0800 (PST)
Received: from [192.168.1.134] ([66.219.217.173])
 by smtp.gmail.com with ESMTPSA id d7sm11942053pfh.73.2021.03.02.16.15.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Mar 2021 16:15:48 -0800 (PST)
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Dave Airlie <airlied@gmail.com>
References: <e12dfaac0aa242f4a10d8c5b920a98db@intel.com>
 <51946a94b1154605bd7dda2c77ab12fc@intel.com>
 <fb8a2d722d4b4c008eeb1ffae87233be@intel.com>
 <CAPM=9tzLJAgjo=+JCNJrVaz3RY3D66tG+zdw_nCCTQGSwFbwCg@mail.gmail.com>
 <CAHk-=whxZJXkuvX2j56QH6ANA_girjWK3nQCPJGuOWwfYEgtag@mail.gmail.com>
 <CAPM=9twngQ=T6WgJBVje9PUtYrSa4LyZgsMZKEykCRc_MObrHw@mail.gmail.com>
 <CAHk-=wjyoO7Evytd_DxEhx1yFKf2GNvBjynhgRkHFkeqyxcQAw@mail.gmail.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <e5eceeca-c13d-efea-bbf7-c1d94ab81685@kernel.dk>
Date: Tue, 2 Mar 2021 17:15:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=wjyoO7Evytd_DxEhx1yFKf2GNvBjynhgRkHFkeqyxcQAw@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] Public i915 CI shardruns are disabled
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, "Sarvela,
 Tomi P" <tomi.p.sarvela@intel.com>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 3/2/21 4:56 PM, Linus Torvalds wrote:
> On Tue, Mar 2, 2021 at 3:38 PM Dave Airlie <airlied@gmail.com> wrote:
>>
>> Looks like Jens saw it at least, he posted this on twitter a few mins
>> ago so I assume it'll be incoming soon.
>>
>> https://git.kernel.dk/cgit/linux-block/commit/?h=swap-fix
> 
> Ahh. You use a swap file. This might be the same thing that I think
> the phoronix people hit as ext4 corruption this merge window.
> 
> Jens, if that can get confirmed, please send it my way asap.. Thanks,

Yep, it's the same issue indeed. Was made aware of it after lunch today
and emailed Christoph, but then decided to dig into it myself a few
hours later. Andrew already queued it up I just saw, but I noticed that
that version will break on !CONFIG_HIBERNATION.

Patch below if you just want to grab it.

commit e25b1010db005a59727e1ff5f43af889effd31a3
Author: Jens Axboe <axboe@kernel.dk>
Date:   Tue Mar 2 14:53:21 2021 -0700

    swap: fix swapfile read/write offset
    
    We're not factoring in the start of the file for where to write and
    read the swapfile, which leads to very unfortunate side effects of
    writing where we should not be...
    
    Fixes: 48d15436fde6 ("mm: remove get_swap_bio")
    Signed-off-by: Jens Axboe <axboe@kernel.dk>

diff --git a/include/linux/swap.h b/include/linux/swap.h
index 32f665b1ee85..4cc6ec3bf0ab 100644
--- a/include/linux/swap.h
+++ b/include/linux/swap.h
@@ -485,6 +485,7 @@ struct backing_dev_info;
 extern int init_swap_address_space(unsigned int type, unsigned long nr_pages);
 extern void exit_swap_address_space(unsigned int type);
 extern struct swap_info_struct *get_swap_device(swp_entry_t entry);
+sector_t swap_page_sector(struct page *page);
 
 static inline void put_swap_device(struct swap_info_struct *si)
 {
diff --git a/mm/page_io.c b/mm/page_io.c
index 485fa5cca4a2..c493ce9ebcf5 100644
--- a/mm/page_io.c
+++ b/mm/page_io.c
@@ -254,11 +254,6 @@ int swap_writepage(struct page *page, struct writeback_control *wbc)
 	return ret;
 }
 
-static sector_t swap_page_sector(struct page *page)
-{
-	return (sector_t)__page_file_index(page) << (PAGE_SHIFT - 9);
-}
-
 static inline void count_swpout_vm_event(struct page *page)
 {
 #ifdef CONFIG_TRANSPARENT_HUGEPAGE
diff --git a/mm/swapfile.c b/mm/swapfile.c
index f039745989d2..084a5b9a18e5 100644
--- a/mm/swapfile.c
+++ b/mm/swapfile.c
@@ -219,6 +219,19 @@ offset_to_swap_extent(struct swap_info_struct *sis, unsigned long offset)
 	BUG();
 }
 
+sector_t swap_page_sector(struct page *page)
+{
+	struct swap_info_struct *sis = page_swap_info(page);
+	struct swap_extent *se;
+	sector_t sector;
+	pgoff_t offset;
+
+	offset = __page_file_index(page);
+	se = offset_to_swap_extent(sis, offset);
+	sector = se->start_block + (offset - se->start_page);
+	return sector << (PAGE_SHIFT - 9);
+}
+
 /*
  * swap allocation tell device that a cluster of swap can now be discarded,
  * to allow the swap device to optimize its wear-levelling.

-- 
Jens Axboe

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
