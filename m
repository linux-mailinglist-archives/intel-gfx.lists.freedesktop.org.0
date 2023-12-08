Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6533980A66B
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 16:02:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7A5810E2C6;
	Fri,  8 Dec 2023 15:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 260BF10E2C6;
 Fri,  8 Dec 2023 15:02:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 7B548B82D57;
 Fri,  8 Dec 2023 15:02:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E0E3C433C8;
 Fri,  8 Dec 2023 15:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1702047719;
 bh=pnQ8N99W3YxXYPpnKiMZZ1nS5sELs3DAuG+uc/lYQ7c=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=MsSZGjZw1SqSdj46XgrTk8vZO/dZ7qITb2Z8T6sO/DGaHkcimKLd/FBw2NHKzjSsI
 JLYcXT0QRLRjnXHxYtalKbB2TuRDdQcfoj6wj/iGV2UhHwfiDbosORN4HAzk2kOVS9
 uCLxsGTHPcTdtESknXUldycvYrPim0XVvxhuxVwbZR0YRxm5XAj4D/526qtCB5N6NN
 fOZ31POhuuH4EFRNp4p7g200nuRcMoyQ5pPvL01uWebaKO4I2vc11VgQo+UNAuWhFA
 f6s/3QgxxCWZvCOPdhc5k9IrpEY/pc7RwpQGv+/6gfAqJPEc/6Mmi481nSK62/bppa
 mznVotkihHq4w==
From: Maxime Ripard <mripard@kernel.org>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20231208131238.2924571-1-jani.nikula@intel.com>
References: <20231208131238.2924571-1-jani.nikula@intel.com>
Subject: Re: (subset) [PATCH] drm/crtc: fix uninitialized variable use
Message-Id: <170204771724.64836.9399028897940747949.b4-ty@kernel.org>
Date: Fri, 08 Dec 2023 16:01:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
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
Cc: Ziqi Zhao <astrajoan@yahoo.com>,
 syzbot+4fad2e57beb6397ab2fc@syzkaller.appspotmail.com,
 Thomas Zimmermann <tzimmermann@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 08 Dec 2023 15:12:38 +0200, Jani Nikula wrote:
> Commit 3823119b9c2b ("drm/crtc: Fix uninit-value bug in
> drm_mode_setcrtc") was supposed to fix use of an uninitialized variable,
> but introduced another.
> 
> num_connectors is only initialized if crtc_req->count_connectors > 0,
> but it's used regardless. Fix it.
> 
> [...]

Applied to drm/drm-misc (drm-misc-fixes).

Thanks!
Maxime

