Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBA718184C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 13:42:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C24F89DD8;
	Wed, 11 Mar 2020 12:42:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 952CA6E455
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 12:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=fxPDu0DtPhrHBO4sjTCx5egaowwjZD7MLKCyF4O/ftg=; b=XXJIaa9f6NAmA/jrdcvqBwQoRg
 2xfWm6DxdqpzOk71I975lJY0lwrkyVt1zZcMG+wi8d+ZgQr0Id8NnhRxzgdG3h8zou1cWBT+U+rOw
 kcXylEsvuEBVO7GdpyfAFg4/3v1oENoqEMLSsB5zOEWnWn8I4AKOo4YLjEq5JCk68Yld54xuXHn1Y
 WSG/TYoSPAnP7aayqffyFD3J4/hBw2ncQhmQZVT8edTrz9X8VO26HPyDMV2ZzgZtEtFPAzUgLxTzb
 uHMQHj36RoF9lSdmUkn8WPWC4cev+uPy5vLZ3V/o+z0TnK7XI9YM2a8KnjTmFGBxTF/2gqgGJlEkK
 lVikpg1A==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0gq-0006Kh-03; Wed, 11 Mar 2020 12:42:26 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 1ACCA3006E0;
 Wed, 11 Mar 2020 13:42:22 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id EFA6D20225665; Wed, 11 Mar 2020 13:42:21 +0100 (CET)
Date: Wed, 11 Mar 2020 13:42:21 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Francisco Jerez <currojerez@riseup.net>
Message-ID: <20200311124221.GO12561@hirez.programming.kicks-ass.net>
References: <20200310214203.26459-1-currojerez@riseup.net>
 <20200310214203.26459-2-currojerez@riseup.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310214203.26459-2-currojerez@riseup.net>
Subject: Re: [Intel-gfx] [PATCH 01/10] PM: QoS: Add CPU_RESPONSE_FREQUENCY
 global PM QoS limit.
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
Cc: intel-gfx@lists.freedesktop.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "Pandruvada, Srinivas" <srinivas.pandruvada@intel.com>,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 10, 2020 at 02:41:54PM -0700, Francisco Jerez wrote:
> +static void cpu_response_frequency_qos_apply(struct pm_qos_request *req,
> +					     enum pm_qos_req_action action,
> +					     s32 value)
> +{
> +	int ret = pm_qos_update_target(req->qos, &req->node, action, value);
> +
> +	if (ret > 0)
> +		wake_up_all_idle_cpus();
> +}

That's a pretty horrific thing to do; how often do we expect to call
this?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
