Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 479017725D5
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Aug 2023 15:34:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 555F289E1A;
	Mon,  7 Aug 2023 13:34:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3063589E1A
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Aug 2023 13:33:57 +0000 (UTC)
Date: Mon, 7 Aug 2023 15:33:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1691415235;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Hz0gYCAV1vfwJhYxEbaXlG58dTr+zk4pcu3k3XpTAdk=;
 b=vh8puwqxCRMEBtjAWenhgT7Q35gwDj1a5Up7mLuPa6zf7/v16YHeDidCHYZmG9v3BosqZ5
 snT4UmoOl/wwYK7BzxMAtyzuRQmqxjU2wU1KsJ8WAv9mt59dyZNRL4RZFDq9RqZW3pQddf
 aO7cPiSMp9p6c46+8iIEcLQ+fs9FBKr2MG2u1dMaGCiWLgrfAa8sJrADi2+bvTOBAX0GTh
 kSLdhTIdzhVI2UiBsV8PuSgotQk/j4I165JRN7xTWvjmcwThIN41b/OQBNHicNV5kMsjpx
 VAaoWjOSo1bNsD47iYE8hjdanYCJIqXA1hdYBRZ3fWIgG2g6IgZGPJsR/nqKFQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1691415235;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Hz0gYCAV1vfwJhYxEbaXlG58dTr+zk4pcu3k3XpTAdk=;
 b=OZ7BRtHbOjUfsRckUF9YYE9NSrJmI2O9ZvIGwktqOO+zbRYkIU28KaNOKxzZkgVWvVc/vb
 +6qEfiou6mhu/pDA==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: "John B. Wyatt IV" <jwyatt@redhat.com>
Message-ID: <20230807133354.-t5iv19T@linutronix.de>
References: <ZKyngsXKztAU9J3r@thinkpad2021>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ZKyngsXKztAU9J3r@thinkpad2021>
Subject: Re: [Intel-gfx] [preempt-rt] BUG: sleeping function called from
 invalid context at drivers/gpu/drm/i915/gt/uc/intel_guc.h
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
Cc: vschneid@redhat.com, pauld@redhat.com, linux-rt-users@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 jlelli@redhat.com, rt-maint@redhat.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023-07-10 20:51:14 [-0400], John B. Wyatt IV wrote:
> Hello everyone, I am a new kernel developer with the Red Hat real-time team.
> 
> I am seeing two different call traces with 6.4-rt6 on my 12th Gen
> Intel Framework Laptop with i915 emit the same bug. Both of them
> occurred in the same boot. This kernel was built and tested on RHEL8.
> [1] occurs only once. [2] occurs ~50 times in a boot and log in to the
> gnome desktop.

Could you try v6.4.6-rt8+ and check if it still there or gone?

Sebastian
