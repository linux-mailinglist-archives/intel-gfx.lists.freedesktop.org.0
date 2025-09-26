Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47530BA9382
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Sep 2025 14:42:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0132310E234;
	Mon, 29 Sep 2025 12:42:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CmhGYThj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 197B210E0DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Sep 2025 18:40:23 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id
 d9443c01a7336-244580523a0so27486225ad.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Sep 2025 11:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758912022; x=1759516822; darn=lists.freedesktop.org;
 h=content-transfer-encoding:subject:content-language:cc:to:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=stJ84izxeEItUB66Vm/qDYA515D2UztYSOWsa2H0chY=;
 b=CmhGYThj0nI19G8a+y9515tUMx5brM8IdV5ilnX89g3c+3UhE8RHZ2AMgBb47Nzn5F
 Qr7oOFuY1MYmnO3Xnivil7jjCPkCosGUHhsuBhvZt9io2ull3mqEUtUsHB2wH5Ic/kT9
 xVZSt8XMYCrn8heP7gnbRIz9Z72gjV2rV/iIiQNvyRiKJqEyHtBUNc0iSZuOk0RV6F5V
 STIquWhdV8E2JgWcWmloP2nRHEVKFehS+/SYo2wxIo2GaD2S6PF8YLPGVb3INzr0uGzJ
 28BB3wA+izIq79yFcWnKpjj5ZV0WFn2FMb2LkW/b3VQ3GmLykFcfWjtBiVwmsn8Jol0U
 B4fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758912022; x=1759516822;
 h=content-transfer-encoding:subject:content-language:cc:to:from
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=stJ84izxeEItUB66Vm/qDYA515D2UztYSOWsa2H0chY=;
 b=M6MojthuLEtrMXCu9CQoiyoUtxU9GZiPLr26h2VBq5xVtIl6OAOHziDsnIF1QnJ4e2
 MrNf6G9/ArwUJTgYUPJG/RfWVMQepjxjCagToT+V99brsHyc4oZXiLIGP0bOAEYW78vB
 5/WtxgRbiCSCjPUDx/jttAvgluu7udspheT4SiIpnfHadiA0zV4ssoBE8hbc27IVigR8
 bKK58QZcohge52Cbp3TrrjGD06pKmpFJEdbHTw3ygGMdwrCYAovvRQ1hV49kIJp2lKv4
 Mgu7pJR31o1S9AspCnCLC3yu6RILIArZIHlls9oTEFTFb4b2FQvWhYqizAsPetPlquiU
 uGwA==
X-Gm-Message-State: AOJu0Yw9xb6SCk+zByYLvSltvqYScooorh0e0fp1SPAa7E7t22//hPNK
 /xDy69Q5mhWLM+ynnJlQpTlr8RBUdzKyJaiCSlXoJh82MmQObkmllYnt7O4WYLtb0QY=
X-Gm-Gg: ASbGncvzyQF2kmnSZ7mr+BbKscPOhxstdZUXUPJxTUj2DUFcVMq6rbxtCdiIViP8Lib
 sGXz5tkmsb4APCPogzQDLbPXf8Tum5thYBRehRNNC0s7/gzy0lgAtgnFKkHFuMOvDLcxMB/g2WE
 18MGoGVBa+wbB7R99rxKFPbXydJdWuAmhHe1MCXGUFIS2Zl202NY5dxo3z5l5fCJF8H89vgpwaP
 p92cjxsAaZfg3SeNu6FHYAnURdTRQ2AJ4vowPLFoZE9jdhv4ub2zUhYgtWcVO2rY42RSZPiRDDr
 ASKzsQknfzk42BisAuiyOszw+20DIzyKAgwP6txWJHWlnQV34K3UwscmO3KVT8BAKHAirwoU6cU
 Xf8teRbbaFDO1vLi8w8mhJfG4oID88FEpGwk9ehQlMVmgiw==
X-Google-Smtp-Source: AGHT+IFXGK8iMqpu/q1zv7TPk0SPuVzNPBS6MvhQ56CHLCHoWBCkzmIr0jwTnM+QK+B7YQEUTx2v/A==
X-Received: by 2002:a17:903:3d06:b0:275:7ee4:83bc with SMTP id
 d9443c01a7336-27ed49b8694mr107333915ad.2.1758912022346; 
 Fri, 26 Sep 2025 11:40:22 -0700 (PDT)
Received: from [192.168.0.218] ([115.187.48.192])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-27ed66d310csm60991305ad.10.2025.09.26.11.40.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 26 Sep 2025 11:40:21 -0700 (PDT)
Message-ID: <b285bfa2-2601-4977-b565-642830eea956@gmail.com>
Date: Sat, 27 Sep 2025 00:10:17 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Bandhan Pramanik <bandhanpramanik06.foss@gmail.com>
To: intel-gfx@lists.freedesktop.org, linux-acpi@vger.kernel.org
Cc: jani.nikula@linux.intel.com, rodrigo.vivi@intel.com, rafael@kernel.org,
 lenb@kernel.org, tursulin@ursulin.net, joonas.lahtinen@linux.intel.com
Content-Language: en-US
Subject: [BUG] ACPI/i915: Dell Inspiron 5567 fails to resume from S3 (black
 screen), DSDT patch included
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 29 Sep 2025 12:42:26 +0000
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

Hello everyone,

I am reporting a long-standing bug on the Dell Inspiron 5567 that causes 
it to fail when resuming from S3 sleep, resulting in a black screen. 
This issue has been present for years, including on Windows.

After a deep investigation, I've traced the root cause to a logical flaw 
in the vendor's ACPI DSDT and have tried to develop a patch addressing 
that. However, a final experiment has left me with a question about the 
interaction between the ACPI code and the i915 driver, and I am seeking 
expert insight.

Firstly, the original DSDT in the _PTS method calls the sleep trigger 
(SLPE = One) before setting a critical flag (AES3 = One), meaning the 
flag is never set for S3 sleep.

The faulty code:

Method (SPTS, 1, NotSerialized)
{
     SLPX = One
     SLPE = One
     If ((Arg0 == 0x03))
     {
         AES3 = One
     }
}

My fix was to reorder the operations to ensure AES3 is set before 
sleeping. With this patch, loaded via a GRUB override, S3 suspend and 
resume are perfectly stable.

Working patch:

diff --git a/dsdt.dsl b/dsdt.dsl
index f30aef6..b6fb883 100644
--- a/dsdt.dsl
+++ b/dsdt.dsl
@@ -4359,11 +4359,11 @@ DefinitionBlock ("", "DSDT", 2, "DELL  ", 
"CBX3   ", 0x01072009)
                  Method (SPTS, 1, NotSerialized)
                  {
                      SLPX = One
-                    SLPE = One
                      If ((Arg0 == 0x03))
                      {
                          AES3 = One
                      }
+                    SLPE = One
                  }

                  Method (SWAK, 1, NotSerialized)

(Note: I also confirmed that the _WAK sequence explicitly clears this 
flag (AES3 = Zero), more specifically in the SWAK method of DSDT, which 
supports the theory that it is part of an intended state machine.)

Now, here comes the main part.

The _WAK sequence on this machine calls a graphics-specific method, 
_SB.PCI0.GFX0.IUEH, which is defined in a secondary ACPI table (SSDT). 
This method appears to be responsible for display re-initialization 
after waking.

To confirm its role, I created an experimental patch where I commented 
out the calls to IUEH inside the RWAK method. I expected this to 
reliably cause a black screen on resume.

Surprisingly, it did not. The system still resumed and the display 
turned on, even though my patched ACPI table with the disabled IUEH 
calls was successfully loaded (confirmed via dmesg: "ACPI: DSDT ACPI 
table found in initrd...").

Here are the questions:

1) Is the i915 driver "saving the day?" Does the kernel's native i915 
driver handle the entire display resume sequence on its own, making the 
ACPI IUEH call redundant on a modern Linux system?

2) What is the failure mechanism? If the i915 driver is doing the work, 
why does the black screen bug happen in the first place? Does the 
driver's resume sequence depend on a specific hardware state that is 
only correctly configured when my AES3 = One patch is applied before sleep?

3) How can I debug this further? Are there specific tracepoints or debug 
flags in the i915 driver I can enable to see where the resume sequence 
fails when AES3 is not set?

Here is the full acpidump for review: 
https://gist.githubusercontent.com/BandhanPramanik/3e5350019b513c0d32afed1f22dbaf42/raw/1f44ddcfb17277ce282cf03f9aab2f91bec1bd30/acpidump

Thank you for your time and for maintaining these critical subsystems.

Bandhan Pramanik
বন্ধন প্রামাণিক

