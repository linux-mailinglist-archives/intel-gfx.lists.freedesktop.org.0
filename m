Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 477D5C2FFC7
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 09:39:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8140F10E552;
	Tue,  4 Nov 2025 08:39:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Wgegs3F9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72FAE10E552
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Nov 2025 08:39:38 +0000 (UTC)
X-CSE-ConnectionGUID: BHHaofEmSRyt20LS8+O+iQ==
X-CSE-MsgGUID: 4M53d82/S5CX6iiZxMsSLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="75684342"
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="75684342"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 00:39:38 -0800
X-CSE-ConnectionGUID: cPWno8y5RrquEjQMF+iYPg==
X-CSE-MsgGUID: NyxcMAzFREWnC/6B85Do7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="187410249"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.182])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 00:39:37 -0800
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Tue, 04 Nov 2025 10:39:35 +0200
Resent-Message-ID: <1372ab2dcf9d9bc8fac2071ff4ffcbc54e5a3cc3@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from orviesa002.jf.intel.com (ORVIESA002.jf.intel.com
 [10.64.159.142])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id D43C820B5871;
 Mon,  3 Nov 2025 19:40:02 -0800 (PST)
X-CSE-ConnectionGUID: cEtH9XLzS2+LkaTmHfqKRg==
X-CSE-MsgGUID: qYwbMxFHS46iJu/VMycHbw==
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="217683153"
Received: from fmvoesa105.fm.intel.com ([10.64.2.15])
 by orviesa002-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 19:40:02 -0800
X-CSE-ConnectionGUID: 3TPfpMf9Q6Suun6rgAkFDA==
X-CSE-MsgGUID: Fx7G6ANZROalVG+8bjkmWw==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A0E8EgCvdAlpj7HS/INagQmBUAKCPhkBaF6BC4RViHuED?=
 =?us-ascii?q?IJLgiGJMYIZMpIhgUAzChEBAQEBAQEBAQEJLg8RAQIEAQEDBJFYAiY0CQ0BA?=
 =?us-ascii?q?QIEAQEBAQMCAQIBAQEBAQEBAQEBAQsBAQECAgEBAQIBAQYDAQEBAQIQAQEBA?=
 =?us-ascii?q?joFSYYJRg1JAQEEBwEIAQGBXB6BLGECBQM7AQEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBBQINH2ABAQQBAQ8RHQEFCgwdAQIBAgECBgIFE?=
 =?us-ascii?q?A8CHgQEAgIDAR0BBAEMAQUBLQQEAQQdgmABgiIBBhABAzYDBQykW4EFQos+g?=
 =?us-ascii?q?RUFAhaBAYINBtpgChkoDXFifwIBBhSBCC4BhHUpXIJWAYFug34bg2N6J4EYg?=
 =?us-ascii?q?RB6UIJEgkGBDwEDAReCE4MOgmkEgiKBDokdiBkGhy4mAQcBBhcDBwcJBQQcB?=
 =?us-ascii?q?gUDAgI/CQYFChIDBAMEBAECCxMJAwMCDgIIAwIIBhkBPxIEEwIICQQLBwUfC?=
 =?us-ascii?q?gIMBwoKKCISKwoBAgFaFhoBCAYCAgQEAgQMAgkCAgUDBAIEDQMEAQEIAgItA?=
 =?us-ascii?q?wEDGQgJCAILBREYDAsHMgMQCQQhAwMSFggDAwICAgEHAgIBAgEBAwMHBhABA?=
 =?us-ascii?q?gEPAgMDBAMEBgMFCQEHAQEBAQECEwMCAgURBwIBASABFQIHAQQDJxkCAgYCA?=
 =?us-ascii?q?gICAwICAwMDAQIBAQMFAQMCAwIBAgEGAgMDAwUDAQkFAgIDAQMBBgQEAgUBA?=
 =?us-ascii?q?gICDgEDAgIGAgcJAwEEAgETEwICAgIBAgIBAgcBAQIDAgUFCAIBAQECAgMCC?=
 =?us-ascii?q?wICAQIBAgIDAgMCBgEJBAQEAQIBAQUEAwgBAyQDAwQFAwICAgcCBAMYAg0GA?=
 =?us-ascii?q?QQDBQUDCAMGAgIDDwMGBgcCBwQCBAICAg4CAgMHBAICAwEMBAcCAwICEgMBA?=
 =?us-ascii?q?QIPAgICDAEBBAICAgUCHgoOAg8CAQMBAQYCBAQDCgYCBgUCAgEEAwcCAQIBA?=
 =?us-ascii?q?gUDAwIHAwIDAgEPGAMCAwoCBgUEBwICAwMEAgICCQEDBgEBAQECAgIDAgIFB?=
 =?us-ascii?q?gYIBAQEAhEKIAMBAwUCBAcCAQMCAgEEAQEDAwIBAgECAwECAgQCAwMDAwMEB?=
 =?us-ascii?q?QMBAQMCAwUCAgMCAgICBAEBBQsBAgQDAQUBBwUDAQMGAwQEAwIEBQMLAgIEA?=
 =?us-ascii?q?gMDBgMDBgMCBQIHAgIBBQUCAQEBAQwJAgICBwMOAwICAgMEAQIDBAMFAgMEA?=
 =?us-ascii?q?QEBAQQFAgMDAgIBAwUCAgEBAgIEBAIDAwYCBAIPAgEBBRoRAQIGBgMCAQMFA?=
 =?us-ascii?q?wMDAwMCBAICAgIGBwsCCgQEAgEFAwcDAwUGAwEDBAMIAwoCBBgGBQICAgECD?=
 =?us-ascii?q?BIDAQIKBAQDAgUCBgkDAgMDAwEBAzkfFgQFAgUDAwMBOgMOBAMNHgIBAQIGA?=
 =?us-ascii?q?gEDAwMFAgMBAwIHAxQGAQYIAgQEDAIDAwMHBQQFAwcCAgcPKAIEAgICAQICC?=
 =?us-ascii?q?QMDAwMCAwYDAwMGAwoCAgIBBQIFBwYBAwECCgMDAgMMAgIQAgMFAwMDCQQCA?=
 =?us-ascii?q?xMDAwYDAwMDAwwCAggDAQIBAgQCAgEEEAEXCAgBAwUDAwUDCAUEBwQCAwsDB?=
 =?us-ascii?q?Q4EAgoDBAIEAgsDBQMDCQEDAwMVAQQCBAICAgICAgE1BQMDAwMDAwMEAwMGA?=
 =?us-ascii?q?gQCAgICBAYBAgMDAwMDAwkDAwQCAQIBDAECAgYCBRAGAwUCBQMGAgEFDQMEA?=
 =?us-ascii?q?wIDBQIEBQktEAYDAwcCBwsOHw8DCwkIEz0BCwcuBAQMCiABFBQHKyFfEJNYg?=
 =?us-ascii?q?nAMPlEBgQIpEXM5gREBAaIuAYIeoGYhCQEGAmCBZ4EKHy4Fg3uIHo09iBYzh?=
 =?us-ascii?q?yWjRpkGjgibKBEkEoEyOgKBWk0jgQFtgUlSGQ+SIYUTxj47NRIqAgcLAQEDC?=
 =?us-ascii?q?YVGAQGFH4NMgh8ZgTIBgUsBAQ?=
IronPort-PHdr: A9a23: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
 D/+BWVEDmAMH0WYH0u2OLSz+cPJ94Cl
IronPort-Data: A9a23:v5vpn6KCXSKmErBlFE+RXJIlxSXFcZb7ZxGr2PjKsXjdYENS1TVRy
 TMWC26Bb/mNNDCnKt4kPoS0pkgFucTVzoVhSwdorCE8RH9jl5H5CIXCJC8cHc8zwu4v7q5Dx
 5xGMrEs+ehtFie0SjGFbOi59RGQ8onRH+SkUoYoAggoG0k8Dn5n0Usy8wIAqtQAqcCjBA+Qs
 s/FrcTaOVu0sxZ5KWt8B5ir8XuDh9ys/mpJ1rACTaoT5gKHziFJVMt3yZyZdhMUfKEFRoZWe
 M6elNlVzkuBlz8xB9WslKrMc0Fiatb6IQiUh3NKbLOpix5EqzZa+v5T2C00Mh8/Z52hxrid+
 f0V3XCCYV5B0p7kwYzxZyJl/xRWZsWqzpeceCTi7pbDp6HxWyCEL/1GVCnaNGCDkwp9KTkmG
 fcwcVjhYv0Y7g4fLX3SpuRE36wewMfX0Iw34U1Ywyn8A6cfH6veXqOU/9Bx3xkcr5UbdRreT
 5JxhTtHYx3KbltBIFoaBJ8ln/uvnj/4aTIwRFC9/PFupTKOlkorieCraYWKEjCJbZ09ckKwq
 njHumj0HBwecdaY1DyO/2mEgu7UgTi9VpgfGbG17f12h0XVwXYcYPETfQTn8KDm2x7mMz5ZA
 2IEpQVwhI4AzmuiSufSHE2yon2BgQFJDrK8FMVjtF7cm/O8DxyiLkECQiRTZd5gl8Y9XSYty
 USKnvvtBDpyoPuUT26Q8vGfqjbaESEZJGpEYC4fXwAX6trLpIA1kwKJT9B/HarzhdrwcRn5x
 TyL6jM+lqkSpcoK0biru1HBnz+o4JPOS2Yd7x/eQGOj4kV4aIKsYpel9UTKxfJBKpuJCFiHo
 HUA3cOZ6YgmD5iGmS/LROwSBqCv4OmEOy/0hV9pAoln9jKx9nrldodViBl8LUFodMAFeiLta
 WfXuAVM9NlSOmenael8ZIfZI8Yjy7X7B5LmTOLFdchSZZZwdyeD/SdzdQiR2XzglA4nlqRXE
 ZWcdsClFjAeAKR7zTy7Qc8Z0Lk21mY/w3/eQdbwyBHP+bmXfnmRD6gMO1uJcfs67YuAoQPI4
 5BeMdeHz1NUV+iWSize+o8eLxYEJHw4Ao/tqM1/cu+FPxogGWc9BvuXyrQkE6Rglq9Um+WO5
 nihV0tT2kv8rXnGLxiaLHFldL7rG514qBoTJSEwMEzuwHUlZ4+H6KYZaotxfL87+eglxvlxJ
 9EbesGED7JUWy7F8jAURZ38qpFyMhWtmQ+KeSGiZVACk4VISAXD95nqZAbi+CQVDTawrY05u
 bLIOh7nrYQrHDhaAt7zZqOWkWisoH5Dgu1bXGXkC4wGEKnzy7SGPRAdmRPeHi3hARrKzDbc2
 RybDBsVvurRpJdz98PG7Uxlk2tLO7svdqa5NzCKhVpTCcU81jf/qWOneLvVFQ0xrEuupM2fi
 Rx9lpkQysHrY2qmQ6IlT+k6nPtWCyrHv7hA0gBtGnmDdEiiFr4oP3+Hw8RVraxR19dkhOdCY
 WrWooMyEezQYKvNSQdBTCJ7Nb7r/a9PxVHvAQEdfB6SCNlfoOHfCR060tjloHA1EYaZx6t8n
 rxw5JFPslfl4vfoW/7f5h1pG623BiVoe40os5gbBMngjQ9D972IScW05vPeiH1EVzmA3oTG7
 NNZaGouSomwHnb/Tkc=
IronPort-HdrOrdr: A9a23:d1MXZK5esxHt0vhKewPXwEnXdLJyesId70hD6qkQc3ZomwKj5r
 yTdZUgpGDJYVMqOU3I9urwQZVoK0mxyXdK2/hZAV7PZniBhINHRLsSmLcL7VXbalrDH8RmpN
 Rdm5EXMqyFMbCR5fyKljVQauxQsuVvk5rY4ts2rU0dNj2CMJsQnzuRYzzzeiYYKjWuKqBJXK
 Z0jfA33QZIF05nE/hSxxE+Lpb+juyOupajThIPGgI95BPmt0LR1JfKVzadmjkROgk/o4vKMl
 K18DARJJ/Cjxh28G6464ddh64m6ecJp+EvOCVEsLlwFgnR
X-Talos-CUID: 9a23:Y+1krmG4radBqs3qqmI8yHYaAuUrI0SD92rNJRGiBk9qZpG8HAo=
X-Talos-MUID: =?us-ascii?q?9a23=3Ag6OYKgyIfRn7GkcoMl6YQW1HGw6aqIq+V29TuLM?=
 =?us-ascii?q?0ge6NMRJfeGeXjjeyfZByfw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="74917980"
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="74917980"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from gabe.freedesktop.org ([131.252.210.177])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Nov 2025
 19:40:01 -0800
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
 by gabe.freedesktop.org (Postfix) with ESMTP id 68B8310E232;
 Tue,  4 Nov 2025 03:39:59 +0000 (UTC)
X-Original-To: dri-devel@lists.freedesktop.org
Received: from mail-yw1-f193.google.com (mail-yw1-f193.google.com
 [209.85.128.193])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98F3410E232
 for <dri-devel@lists.freedesktop.org>; Tue,  4 Nov 2025 03:39:57 +0000 (UTC)
Received: by mail-yw1-f193.google.com with SMTP id
 00721157ae682-78619d34979so45959267b3.2
 for <dri-devel@lists.freedesktop.org>; Mon, 03 Nov 2025 19:39:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762227596; x=1762832396;
 darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=xpuX+0gcTNHnSFJjEkqTDWSkgQkHG3tHbE3Hg1NdlzA=;
 b=Wgegs3F9hT3dPT+S8yU2MiKmAJo6srw32yI9IZ3feedML7IwlONRANW1vNF4FycVe5
 XtNq1NJoRYnPW5k5mQ7u9Cre14lOvXQ1vCaf98NJcFXChB/WbbKeRLcrATJ3bB6hfPHu
 wAR4GAKh2+HRCEWK+fmqQNzyrSLPy103XwQn9WZjIvXGjAC11iPN2+gueh4Yvipr705n
 ykSTYoW6FAEDBXHI2c5SCmoNXHp62IruGfqA5KMUjjrKnfEAD2eukJJrR4kG71BKUpAJ
 K3WG9wdQV6cUsjQPszco6kg+YBwb4mZKSd2F5iyXqTFK+bBhvY8CvZ9enakGKZndbhWK
 xyHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762227596; x=1762832396;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=xpuX+0gcTNHnSFJjEkqTDWSkgQkHG3tHbE3Hg1NdlzA=;
 b=G0bZSahisP3ufB6idWNaTPVOyRw9rPMvt6G+XYUaCwT4kDe7De/8u8AMGE2Xzgf6B1
 dBHV8FsAHjXTZJSFCW2hRazPnJT5Edg1gSexxQ/UcAyLExeJpX+fzfjffkX5bDMmrm0e
 CzK7jilU+fjHCjLgdMAh7jIeRVPUMA6Z66+8xwt3wHDEVwEdAOC9XGCbyX6WbR8h0eHr
 d+iSZa5DmAYmFUgN4F5w3kvCWFXxjDyeYmOZwsuvbgbym3pYC1JWW5ep1uOgEx0tvTtE
 YfmK2fhXcapfWHH+8PSvtFLk7g4CZxE11OpqeKQvR+/YRNolR+DF/VRPly7pWQ+PaVZi
 PDSg==
X-Gm-Message-State: AOJu0Yy5oPajh2UcNfOMljGgmILktBBX+p+i2h5ExBots4IN5QgCxQes
 R35NYEgLHLRe9BLL3vZDUT5abwO5p4I/aIOWEjWXPQQxNyCxbI4xrnaXcPYkWM418nfN4r3lAMj
 OwQYD3T6CZbxasZvVtkc+JNATWcQEMJKNBzOfv6A0g88=
X-Gm-Gg: ASbGncve0xTWwyp3CFHxvNeof6QH8bEJ+CdQSul8u480msq+NxbkNoIaFUua0Tz7xcP
 I2BzSqZfquejJTmMOdXL0cxqnqnDz9FUwMBFNyBvYTTM9xyrHfTjMor0iLAXcND/n9dDgG3WFSV
 IMsrRfZH3MomMSCmEbAwV3HuQOizHWwBT3cIsWF4QrF7xlDgL3KpUIIgBa1FtyzMrsnxQu0ToFs
 jbhxzq/9NALAmJI4iwtgeBjFEn+CydXjDft9Z7viGwgDzOR11wwdobZzT+SUanJTphBj3Yp6EtU
 U80=
X-Google-Smtp-Source: AGHT+IHwH/ptJkI3P4cK5qaG8I+m0dbhJoif7rCWz5dLPdyJrNsCgDnRA1eGpfBSwxIno8YdpDLSoGqPKUyt4lwvQA8=
X-Received: by 2002:a05:690e:428a:10b0:63f:a4d7:b523 with SMTP id
 956f58d0204a3-63fa4d7bd1bmr7017196d50.28.1762227596116; Mon, 03 Nov 2025
 19:39:56 -0800 (PST)
MIME-Version: 1.0
From: Aditya <gtnq37@gmail.com>
Date: Tue, 4 Nov 2025 09:09:45 +0530
X-Gm-Features: AWmQ_blJRbHCZUhWFL8RsocLEokBbEbMioV6u3LwkKVggCYhEOcMvHJraNq4B90
Message-ID: <CABZLM817K1Q8Hp8YA3tB3M5NmbuuuTfBYUo_LgPr=DBsosTaZg@mail.gmail.com>
Subject: Stability of firmware prefixes for i915, xe, and amdgpu
To: dri-devel@lists.freedesktop.org
Cc: foxboron@archlinux.org
Content-Type: text/plain; charset="UTF-8"
X-BeenThere: dri-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
X-TUID: Jd84kAMh61H1
X-BeenThere: intel-gfx@lists.freedesktop.org
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

I'm working on a feature for Arch Linux's initramfs generator,
mkinitcpio, that'll make it more specific about the GPU firmware it
includes for i915, xe, amdgpu, and nouveau (also nvidia-open).

The idea is to detect the GPUs present using lspci ::0300, and include
only firmware required for those cards.

I noticed my coffelake based system (0x3e9b Intel UHD 630) always loads

    i915/kbl_dmc_ver1_04.bin

If all kernel versions that support this particular GPU load a file
with this prefix, we could use a glob pattern like

    i915/kbl_dmc*

and filter

    modinfo -F firmware -k $kver i915

output to be much more precise about the files included in the
initramfs for current and future kernels, shrinking it by several
megabytes without loss of functionality, provided the GPU isn't
swapped.

Another of my systems with a Ryzen 5625U loads firmware with the prefix

    amdgpu/green_sardine_

Including only files with that prefix resulted in the initramfs
shrinking by 25M.

And for nouveau, I'm thinking the structure of /lib/firmware/nvidia/,
which contains directories like ga102/ and gp104/ implies you just need
files in gp104/ if you have a GP104 based GPU. The corresponding chip
name for a given Nvidia device ID can be found using hwdata/pci.ids.

I'm hoping for clarity on the stability of these prefixes: can they be
relied upon? If yes, I could build a mapping of PCI device IDs to
firmware prefixes using the MODULE_DEVICE_TABLE entries in the module
sources or just parse dmesg output containing log entries about successful
firmware loads to extract the prefixes without having to hardcode
a table.

Stable prefixes would mean this table can be built once and used
by initramfs generators to shrink initrds which include GPU modules by
tens of megabytes, with little to no maintenance burden. We'd just have
to add entries for new GPUs as they're launched. This could also help
Fedora deal with space pressure on /boot due to the increasing size of
nouveau firmware which had them land an emergency change to double
/boot size to 2G for new installs.

Thanks,
Aditya
