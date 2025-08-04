Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 976DAB1A697
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 17:52:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F6AC10E63F;
	Mon,  4 Aug 2025 15:52:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Id/4sLs6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 208C910E649
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Aug 2025 15:52:24 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id
 4fb4d7f45d1cf-61521cd7be2so4870251a12.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 Aug 2025 08:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1754322742; x=1754927542; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=0rT7fJ7ZYr2OalPzqKvRsEo8R+EK34TIUF02aSOGzFE=;
 b=Id/4sLs6CcE+aB28W8U9B8+WFbdLQQ5JfGhKvmsf4UTNbDXDMfxpMLsJrjky1uKO2V
 D9UaQ7dOANrZXx9VvhsChyOiLvenzDjqeEAHFH232AZkxUyitbtrEjVuytJ6s6wK1yNf
 ZOnBPr1Wt59njeEQYTA1f3ZJBvA9tF4Mw9A6V8u8EpnS0Gt0cKq5XVzK6Do1FHXfOvZn
 IfHkvOxAHXTWOXLauZq1W2wlq/PqqDwubThEnD4QjfYDwqnMF4ynNNAJv1sKEMQxumOB
 mTcTBMcHk8EW87vHh6Z76nUJtfvvFfjQMbR4SOm04K2H6c9YWpFHW8AXChtf4A2I1uRT
 pMlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754322742; x=1754927542;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=0rT7fJ7ZYr2OalPzqKvRsEo8R+EK34TIUF02aSOGzFE=;
 b=J1IG9AriSGLV4Y81HCDdlgpb2ihEYiGDznO22gzw2t8ExZHZzZxe0rXG7S792ixi+e
 /iNPbpEcAAMY71CSwGbrLTEAfX5FxGOdvP9UQAV00KHDxvRkOQ4IAFSuzJFVpcaFiA+d
 LGVHG/043+BQEiOxkCSVUXuKeoe+4LQ2+nel+GknoHd/BvczTOVkJMR2Tty20+j2HL9f
 GxwJv+LFdZzeb15be0Nrrs0UdOqgAXymzuVQcJzWyYtc/k7R5uIccxyC53yClSEJEISs
 UutItArLeDHZlxAgjy2ex0Ms1LOALqbB4TnY1vgRB9anRSaRWpNcUVdvFnzaZ2RbOltb
 6Usw==
X-Gm-Message-State: AOJu0Yw/cABsOtGPS0qm9Zdt7u5O9p7NBIKqtnr3EN0Ub2ds7qlCA4wY
 ll0szxZtuDYfGu/CAkihEFAOoomKpvxfIhYadw+A8xzxH3TAXFGzg9oCVR36JUy/E80=
X-Gm-Gg: ASbGncvXbvi/xMyCMaOwMKuX+d3WLKODAsCOk8jMroBZzi08Ut692YRy7c+JNBhtQbY
 p3GTbpox9OfSkLJ3k3xrXVweQPehw71aggDASzskLbTFRW8oD3sRQz4FqnLbChZ3J24RZGOmURK
 li7m3Pe1n+HacYXx6bpVq0eyNxGgcgR/sbekDHNY/uBdhi6dFiQuDiuCGO6UcO37cpHOAyUv4yO
 PIbn3K1OBJ/c4u6H+AsWjKRyTnqB6IRaYLAisFRo6Cd4laB91CdeZIw/jEfsI5EvU2B7eQsRnrC
 Cfj3wD4+2/CMees9EAgFuBDZKlfcVLKmN4B+W7pkA3rg33Z51lQ4vJLRRd6P25qqjSjpL9lTPnP
 Nj698esvU05+9N8bGozC9HwP/aDHUq/AHZX/rqzIm9vMMNu6QORq5RYR6LKLAeGplium8j78=
X-Google-Smtp-Source: AGHT+IFMK5wxZ5kFcGNKN972Y0iO+s3nyqP1HY8fMU+Vpy4wUzTkbJneoedNErzdjKz4NsAm/0XvHg==
X-Received: by 2002:a05:6402:510b:b0:606:fef3:7c3e with SMTP id
 4fb4d7f45d1cf-615e6ebcba8mr9782297a12.3.1754322742199; 
 Mon, 04 Aug 2025 08:52:22 -0700 (PDT)
Received: from [192.168.0.13] (217-62-96-139.cable.dynamic.v4.ziggo.nl.
 [217.62.96.139]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-615a8f15d9fsm7008987a12.17.2025.08.04.08.52.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Aug 2025 08:52:21 -0700 (PDT)
Message-ID: <6020c152-9de5-40cc-aedf-7024df45d27c@gmail.com>
Date: Mon, 4 Aug 2025 17:53:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Issue or bug concerning DRRS on old i7-4980HQ
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
References: <3aebffd3-b3b7-4c3c-a7ac-816965d0204d@gmail.com>
 <77f3386d-756b-4cca-b317-1b3c5ad725fb@gmail.com>
 <b2250460639d81b79f15995c9769eac21849766b@intel.com>
 <d9d1a7ff-307a-4964-98bf-209781ffc6fe@gmail.com>
 <f9b10acb19bbe19813b4bebd9ac666b397d9c7c0@intel.com>
 <9436a617-ae53-4702-9ac3-27d9c1267626@gmail.com>
 <57adde32e4fa7fc4c74d8cba39249af1399de609@intel.com>
Content-Language: nl, en-US
From: =?UTF-8?Q?Ren=C3=A9_Herman?= <rene.herman@gmail.com>
In-Reply-To: <57adde32e4fa7fc4c74d8cba39249af1399de609@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

On 04-08-2025 17:42, Jani Nikula wrote:

> On Mon, 04 Aug 2025, René Herman <rene.herman@gmail.com> wrote:

> All I'm saying is that any fix must not depend on the user having to use
> a debugfs or a module parameter. It needs to work out of the box.

Makes sense to me. Now, while repeating me being clueless about this 
code and even technology outright, I've wondered if the thing to do 
might even just be refusing to enable/use DRRS on this old Haswell-era 
hardware

Probably not a theoretically/technically sound/interesting  plan -- but 
it sure would solve things for both me/us and the Ubuntu/freedesktop.org 
bug-reporter, and frankly, I don't think anyone on a system like that in 
2025 would know or care in the first place. They just very much mind the 
flickering...

Maybe stupid; maybe regresses a ton of Haswell-era systems on which it 
does work fine. No idea...

Regards,
Rene
