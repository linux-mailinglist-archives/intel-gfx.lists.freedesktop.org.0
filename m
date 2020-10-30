Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E75932A0165
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 10:26:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F5506ED1A;
	Fri, 30 Oct 2020 09:26:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 850E56ED1A
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 09:26:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 1F09D3F583;
 Fri, 30 Oct 2020 10:25:52 +0100 (CET)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=G9lme/AP; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.36
X-Spam-Level: 
X-Spam-Status: No, score=-2.36 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.261,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IOYGxWKNv--D; Fri, 30 Oct 2020 10:25:49 +0100 (CET)
Received: by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 914563F3BF;
 Fri, 30 Oct 2020 10:25:47 +0100 (CET)
Received: from Win10-45-1tb161.SSPE.ch.intel.com (jfdmzpr06-ext.jf.intel.com
 [134.134.137.75])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 367D83605DC;
 Fri, 30 Oct 2020 10:26:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1604049967; bh=X7rL1/k4PD8pDOVQQMA5nBNYJgGAEO0/xxbaaXtqqzo=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=G9lme/AP9mGNElTFFsgPleUOw7PwFsxtRqEzhLzmbUlyVspFWqTi7uy5NBKaISXHs
 3P9xdM+PJegkxUJJrUtVwha5FvZ39ex1usgSdtSSh/H3uUKqrV0Ct3GWj4KMhEeKLS
 K1oc/+BUmzP42DI8L2KGYDzgdq2OifBtGqVz6ljU=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-15-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <02b0d2c2-5687-03b1-7741-34a3c2c819ac@shipmail.org>
Date: Fri, 30 Oct 2020 10:26:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201016104444.1492028-15-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 14/61] drm/i915: Reject UNSYNCHRONIZED
 for userptr
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/16/20 12:43 PM, Maarten Lankhorst wrote:
> We should not allow this any more, as it will break with the new userptr
> implementation, it could still be made to work, but there's no point in
> doing so.
>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Ifdefs don't appear consistent with the commit message. Wrong patch or 
separate patch?

Also please add a discussion what impact this has on existing user-space.


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
