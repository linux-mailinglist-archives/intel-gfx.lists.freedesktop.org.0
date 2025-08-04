Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C24B19F80
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 12:10:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F8FF10E15E;
	Mon,  4 Aug 2025 10:10:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hphqgGgX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
 [209.85.208.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2389B10E15E
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Aug 2025 10:10:44 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id
 4fb4d7f45d1cf-61553a028dfso3904025a12.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 Aug 2025 03:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1754302242; x=1754907042; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=p2Z0bLSUGsyZqr7LEWrzZ2OgQTqjpk2ghFq19HVjtgQ=;
 b=hphqgGgXv6UIlUiqppPjXaSZ9CoG+t1MjqbchceMmxpZdLzjwR1TeNoKjeOak0U3E8
 vYA9OiaoUAIrP7QkKXfgLfO8M31vJVcJ9fTUkhKw3EdEsBzI8E84h05AORitmW2mZpq0
 e2WKj1wr0wlWFgWD84Z4vfSzqemDtwqvqzojODv40yiTJVggw4vd/b3vrUlfHT29tOjw
 lZUA3UOsd1aBfPLxVOwoN4NTTSAn3Wl/UTOvQgtDXukFj4Y7G+G3VVc8a9Ys/ayct6/R
 /QW/KVn15GPRzHEeUOS8goB2JV5r/4knmwtO9TzWLvkumtP3hTxZHKl4yJqUpNPZP7gb
 OWWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754302242; x=1754907042;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=p2Z0bLSUGsyZqr7LEWrzZ2OgQTqjpk2ghFq19HVjtgQ=;
 b=bBpE0Wm4rjHsiWvBDpQq85HaJfjBQzY2tDQYssnzVrmUND0OdEZtxOQgvdiNN/S/jv
 pW6qHbs8ZcPePxiMoxehTqZKHQtnY4msOJT8M+tQw2bH8JUzBsXPA1aAnGeGZalyiyUH
 aWNRHe3hLUZZ36JD8hKOrNQI/3benpq1qjSp/wybgGOFs4PUaTWJb34BAT3aYzWzfe1l
 VnhQ9QJjM6BsdG9p4F7Tl5/ZmyQ5cjEsFk/hOtERJaWwPFlNlgLI/+y9k7w9LMQdYIyT
 PPbuV1uVF+v9RNqe32v14yd7nVy1bB/ZM1IbaPukAYC2vpooOLZmPair7oJ+vRyyTwgy
 hfjQ==
X-Gm-Message-State: AOJu0YwVeXOY3HBPJ1b1k67bOUewOl2rHKVUmHWUtSq2fN5lWSDZgFe8
 gIhrYtRTOp+H1F5wb0zoyVBt6XVcCWtPMS4qe5aVs+YY6xQAb2sxp52WpZy72P2wBnw=
X-Gm-Gg: ASbGnctURWlsmO6I0B8kkaHNn1OsyNKNRp7dzEyHYz62in345+cNDHZxQ3LlZt6mRC8
 E+dMZ94S5+gur3KtKR0xRevY7sUzLdTRVmXBkYDKHnOEc28jS6ASslAjaz+9WYpJ/bTaKyXRwo2
 y3TLtgLs7ygPuH4CQr2hXsJ84ekH4Xt31LtZj0gCsFMeManDdm2SexsAMmEr/PKvCWwvws62Zfr
 yypYSFNSZkiRcQpisgzJKqjMsg9nqmqZgtFpzNIJP0NJlRjeUGAWf+U0BXWPpM0XXBvN/KPbAFI
 o7y2KI3wYTjwrf8m4B+qb1cKNNwkCYtoEXpObgd5a7MErf8ZJ4aGsm9pIwL48ucLKb0GxLr6+IL
 wvGYT9uO9fsqXlyxYkpBHfcLfdek49X5keUIo5dCcseiyX1rmx6iUhyhPapdloaz1NwYRxcc=
X-Google-Smtp-Source: AGHT+IG7qGyN9AAhrUJ7efrkUwPo6xIU+YaWV9vrU/CuLGV/1f+tIjhYJSxyA1HEzUzZyG15gGk3oA==
X-Received: by 2002:a17:907:2dac:b0:ade:79c5:21dc with SMTP id
 a640c23a62f3a-af940064cadmr1004566766b.25.1754302242038; 
 Mon, 04 Aug 2025 03:10:42 -0700 (PDT)
Received: from [192.168.0.13] (217-62-96-139.cable.dynamic.v4.ziggo.nl.
 [217.62.96.139]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-615a911a6ddsm6404769a12.63.2025.08.04.03.10.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Aug 2025 03:10:41 -0700 (PDT)
Message-ID: <b18e7718-95c4-4220-afd3-0bbde0fc21b1@gmail.com>
Date: Mon, 4 Aug 2025 12:12:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Issue or bug concerning DRRS on old i7-4980HQ
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
References: <3aebffd3-b3b7-4c3c-a7ac-816965d0204d@gmail.com>
 <77f3386d-756b-4cca-b317-1b3c5ad725fb@gmail.com>
 <b2250460639d81b79f15995c9769eac21849766b@intel.com>
 <d9d1a7ff-307a-4964-98bf-209781ffc6fe@gmail.com>
 <9fba1363-5c7d-4b2a-91e1-40bd0e6ac665@intel.com>
Content-Language: nl
From: =?UTF-8?Q?Ren=C3=A9_Herman?= <rene.herman@gmail.com>
In-Reply-To: <9fba1363-5c7d-4b2a-91e1-40bd0e6ac665@intel.com>
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

On 04-08-2025 10:48, Murthy, Arun R wrote:

> On 02-08-2025 16:06, René Herman wrote:

>> Although I'm not a graphics/display person, seems to me it's more
>> or less fixed by Arun Murthy (added to the To: list) in the last,
>> still recent-ish comment on that bug?
> 
> This was a debug patch provided to root case the issue and not a
> proper fix!
OK, but it's a real question I have, not meant flippantly or anythng: 
what is then the idea of the DRRS CTL when it's enable/activated again 
immediately anyway? I'm not at all familiar with this code or even 
technology; I assume I'm missing something.

Regards,
Rene
