Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A865AB0E9
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 15:00:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD74510E832;
	Fri,  2 Sep 2022 13:00:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9C7D10E832
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 13:00:37 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id E47D5CE2E67
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 13:00:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D300FC433C1
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 13:00:29 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
 dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com
 header.b="EAD9f2M7"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105; 
 t=1662123627;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2hyvq6Ay8cVlH+dehYHucQiFeZFEAYGgG00K/Txl9sQ=;
 b=EAD9f2M7gARQAIOyQYamJfMrkEL4qiD71lOX27R5iFAQWS0vVNSV3oeGgVYykqq4EZ9o80
 1PXZXLYpPHz7mOSOX5AxfyPDZyk3Am3+Ld+VWXq2GnYqTebIP/dITY4eRNW/IeM5QV4gN+
 3v5nwHW4UERqSalw0Jq0BriHzwX1D8o=
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 0f617ca0
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
 for <intel-gfx@lists.freedesktop.org>;
 Fri, 2 Sep 2022 13:00:27 +0000 (UTC)
Received: by mail-yw1-f173.google.com with SMTP id
 00721157ae682-3321c2a8d4cso15785157b3.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 Sep 2022 06:00:27 -0700 (PDT)
X-Gm-Message-State: ACgBeo03lw1ZI6862Tq9/fZhT00kXfZffK4KY9fjgCZ9nN4omedLXbya
 3Qaag/Tzz+p3LWytudhyaTKLPyyB0EZshgIfrG8=
X-Google-Smtp-Source: AA6agR4g8Ma2Ck0pPHJl72h0FTl9RM4qyeG8XmUy1R7tcvnBSOIq2Ch6CK0zB4BYo9R/C9bVc7IWQ6SR1zmRNJUi5R8=
X-Received: by 2002:a81:6141:0:b0:328:30e0:a6ca with SMTP id
 v62-20020a816141000000b0032830e0a6camr28920281ywb.454.1662123625515; Fri, 02
 Sep 2022 06:00:25 -0700 (PDT)
MIME-Version: 1.0
References: <20220902070319.15395-1-ville.syrjala@linux.intel.com>
 <87czcefb0m.fsf@intel.com>
In-Reply-To: <87czcefb0m.fsf@intel.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Fri, 2 Sep 2022 09:00:13 -0400
X-Gmail-Original-Message-ID: <CAHmME9ryP=nxj_C26fFMehH6GtZQZvyq6a9dLxWpQ87nFwcqPg@mail.gmail.com>
Message-ID: <CAHmME9ryP=nxj_C26fFMehH6GtZQZvyq6a9dLxWpQ87nFwcqPg@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Implement
 WaEdpLinkRateDataReload
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
Cc: intel-gfx@lists.freedesktop.org, stable <stable@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tested-by: Jason A. Donenfeld <Jason@zx2c4.com>
