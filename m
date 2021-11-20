Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 010E9458C47
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 11:32:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE676EB78;
	Mon, 22 Nov 2021 10:32:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C77136EE51;
 Sat, 20 Nov 2021 07:39:30 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2D4B960E94;
 Sat, 20 Nov 2021 07:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637393970;
 bh=ZyTVqjOSKrp5VXX+khXGou2v7HAND6IAqcRDKMOPn8Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:From;
 b=ZNY8zejO7ZM9vSZU3k/3RhBSZVfY+X1xLg24jqzDlINwEMfwdsUpBy52yy39ph8U1
 QkaFwY9aS9WTX+epYdzXdXkopMDOMC5k/M63z2LFT5JCZRmh3GqV92YIoZtqvG9MdB
 GK7QyNq0MDqN2y5lCLEQUBZGiglKVPGjNgJAjNVnWcbYVdVGwnEBfn2Lh0Emtzd7fU
 py4QIBzbJREgfjDafPxbqahs/TQX5uQRdLTtBH62NCYQXma+jnSEDADCW8yHP1mMfi
 lmaDkgqZof3YJh3Sl4K+AQsiP5Q3DLStqZdCWXb5x7Egvya0m3h92NVSTyQjYVk13x
 WJqcnz6aXuBfw==
From: SeongJae Park <sj@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Date: Sat, 20 Nov 2021 07:39:19 +0000
Message-Id: <20211120073920.16261-1-sj@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211120035253.72074-1-kuba@kernel.org>
X-Mailman-Approved-At: Mon, 22 Nov 2021 10:32:05 +0000
Subject: Re: [Intel-gfx] [PATCH bpf] treewide: add missing includes masked
 by cgroup -> bpf dependency
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
Cc: kw@linux.com, songliubraving@fb.com, kafai@fb.com, airlied@linux.ie,
 linux-pci@vger.kernel.org, ast@kernel.org, dri-devel@lists.freedesktop.org,
 andrii@kernel.org, a-govindraju@ti.com, ray.huang@amd.com, sbhatta@marvell.com,
 robh@kernel.org, lorenzo.pieralisi@arm.com, daniel@iogearbox.net,
 krzysztof.kozlowski@canonical.com, john.fastabend@gmail.com,
 geert@linux-m68k.org, matthew.auld@intel.com, yhs@fb.com, sgoutham@marvell.com,
 thomas.hellstrom@linux.intel.com, pawell@cadence.com, tzimmermann@suse.de,
 mani@kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, mripard@kernel.org, kpsingh@kernel.org,
 rogerq@kernel.org, linux-samsung-soc@vger.kernel.org, bhelgaas@google.com,
 akpm@linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 axboe@kernel.dk, linux-block@vger.kernel.org, sj@kernel.org,
 lima@lists.freedesktop.org, linux-mm@kvack.org, jingoohan1@gmail.com,
 peter.chen@kernel.org, linux-usb@vger.kernel.org, christian.koenig@amd.com,
 hkelam@marvell.com, yuq825@gmail.com, gregkh@linuxfoundation.org,
 bpf@vger.kernel.org, colin.king@intel.com, freedreno@lists.freedesktop.org,
 gakula@marvell.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jakub,

On Fri, 19 Nov 2021 19:52:53 -0800 Jakub Kicinski <kuba@kernel.org> wrote:

> cgroup.h (therefore swap.h, therefore half of the universe)
> includes bpf.h which in turn includes module.h and slab.h.
> Since we're about to get rid of that dependency we need
> to clean things up.
> 
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>

Acked-by: SeongJae Park <sj@kernel.org>

for DAMON part.


Thanks,
SJ

[...]
