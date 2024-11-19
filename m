Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEC59D2605
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 13:39:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1938D10E2A9;
	Tue, 19 Nov 2024 12:39:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.b="MLMLWlXD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
 [209.85.219.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DDB810E2AB
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2024 12:39:33 +0000 (UTC)
Received: by mail-qv1-f54.google.com with SMTP id
 6a1803df08f44-6d40ae72d35so25450326d6.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2024 04:39:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar.org; s=google; t=1732019972; x=1732624772;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=c7YJRy6S+CzjFVx9ocQATHGYD8RoJ7FS66+Yih1nH4Y=;
 b=MLMLWlXDjvDkfeFbu8fb/aixDZlxJdSu11/LfZOqkK/YyLEVcP+083tU/D80pffHLe
 ku/V5Dr9ch20I+pyY/06s5jDtjvOKW7a9Isgd6g8H8uaDAp+SfE7Ua7w8mp910niKovV
 7kecHY6HKUHu+dW2DVAem5GRrMAug1vltybmfjYDc3b8DOjKRofZX6PlmUTi2RlVWJ7A
 vJccp4b9wZw9COLN5v9VrK7pLzSsPnIG9rSS0uAdBzUcC5WCrIC/h+mrI65rogif8N/6
 JWtZvsnAAaMh9CbosF23Od6ulEqwHcSAJIMmZeCdzMxU9yjQBmHtaz/PzdQR56QPcaUE
 Jggg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732019972; x=1732624772;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=c7YJRy6S+CzjFVx9ocQATHGYD8RoJ7FS66+Yih1nH4Y=;
 b=nyn6LVsyDQTGoMa15iPTigzDBEuorMutkIB2kuSuwD/bhfe3QgpCyJ4OWPAdPhZR8N
 yJmTWJ3CdAJiE6ZDXJxeBrYrtxCcLQXKzrdsUV9ZoIeBbaK3AceJwncUG9hYBPTDRACV
 DnmhXt2ySeSNug1akEZbjNut/Oz5oVr/SM9iS+LVk2tw1C0kk3ll2CwIGmJfx9wAgFxY
 P/AhYpPh/eBJXyTnYLjJ2pkGog8AsBcEh+l6w0cc8uc4aq+OfaVbcULZRd/Q0LhsYcS/
 +4txWc/mFrEwSoRsRJs5FtR61Ue90Eof9fmsq+MEQknp4b0mAhP71tLv8etkU6Fv76L7
 tPKw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWbtuzuvQ1/Xtdy2J8UqmLR8ESKMkFGHnm8iwbxpXHrXphDyMrWQ9dAHBj5Cea7tQ9QR7vpLIZnQIg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyE/hdk5ZHNcjLCjzqFgILI0Pw5faNVO8aWP8MjgnV8a5oz36bJ
 neHZhNkYCjhayEotbS4sAHW1rYEAuaFZ8ubd1WnyF54hUKtTr2PMd4EUztTiVXc7L8QN1hsGYaJ
 5IVJq5AAxw5L0HYrftHYlLA6ZmFtQC7NH47pFSg==
X-Google-Smtp-Source: AGHT+IGEtYpIyae7ccJUF5Wq5keNlhdEKLUf+IieAL1BxbNm6KQF/DB1EqtxKvme3J7OUdNvAEIEh0qTSJ+cuaA1xoc=
X-Received: by 2002:a05:6214:acb:b0:6d4:29ae:fd3e with SMTP id
 6a1803df08f44-6d429aeff13mr51505626d6.29.1732019972672; Tue, 19 Nov 2024
 04:39:32 -0800 (PST)
MIME-Version: 1.0
References: <20241119104521.575377-1-arun.r.murthy@intel.com>
In-Reply-To: <20241119104521.575377-1-arun.r.murthy@intel.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 19 Nov 2024 12:39:21 +0000
Message-ID: <CAPj87rOO58Q1jBO3QdygzuSZpPeabNdBMeXXd7RhNWVOUFisTw@mail.gmail.com>
Subject: Re: [PATCHv5 0/8] Display Global Histogram
To: Arun R Murthy <arun.r.murthy@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
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

Hi Arun,

On Tue, 19 Nov 2024 at 10:55, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> The corresponding mutter changes to enable/disable histogram, read the
> histogram data, communicate with the library and write the enhanced data
> back to the KMD is also pushed for review at https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/3873

The Mutter MR you linked does not actually write anything back to KMS.

Cheers,
Daniel
