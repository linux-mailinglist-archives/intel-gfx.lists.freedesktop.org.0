Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SGKWI/z1L2qPKAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 14:54:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E64146866D8
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 14:54:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=sakamocchi.jp (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54D5B10E424;
	Mon, 15 Jun 2026 12:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 593 seconds by postgrey-1.36 at gabe;
 Sat, 13 Jun 2026 02:21:28 UTC
Received: from flow-b6-smtp.messagingengine.com
 (flow-b6-smtp.messagingengine.com [202.12.124.141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CEE510EBCF;
 Sat, 13 Jun 2026 02:21:28 +0000 (UTC)
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailflow.stl.internal (Postfix) with ESMTP id F3E41130005A;
 Fri, 12 Jun 2026 22:11:31 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Fri, 12 Jun 2026 22:11:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1781316691; x=
 1781323891; bh=fh1bnzRZkfgjl9/+6Z2PA5Kxn4ZV0HU2wTlYFBWNiQ4=; b=m
 /B1Wk7purilBiKkMRVuC3Flfti1lZpKfwlt77AZHkSZhKAS8ia2z8R1CfOFuJXF6
 jqWuwBOSRldHgJLpHFlWbohi+/JgUUnflgC3sz67VmbHnHyV/qKZ4L9+/cZXwBar
 pZn5nQLmSLaeUika7jXQ35MDD5xqJYMJ+XFW0A6h82xxae3b35f+ak0pm9sP0j3o
 Rn6Oms26Dq5JaxYcd+LhJ5gGkGzHljkvR3PWQpdcFDZcrutUQ5Gw4MM7C09x5GvX
 Rm44QXSJLT+PBjHrSfnnGBG8BhkzE2o2bhAyK2kr+YrDji7XqZrfOW/mHwWthgS8
 Q8mLA82aenzF3UH78IFeA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1781316691; x=1781323891; bh=fh1bnzRZkfgjl9/+6Z2PA5Kxn4ZV0HU2wTl
 YFBWNiQ4=; b=B/MO738r25kBC5W1FZEi/jo6InpT95G+oNzeSTFxbs6dD4/bHOo
 eohWxUFnm/DfWRpK+E9TtLDOCX/uuLyULx8m11eswEvzdxMrqTKhaL6Z02wKBqNd
 CwUcrPKAd4Siff0BNUrNKfyxMQnnlhIFTpMxLRKZ8xZjD0t2cTZE+U4PZ4f1VLum
 eUck3wo68eBHMIfH++HVVwfv7ri3oT2EnqWmMJLbVCz7Bgqys21n/vANfaMKmzA5
 KTcEAvxk1SZlFD9lLcLv/WXuzYzr6P0pxCDuHnQsrl+DKeZ8fmfPZHEY9ZY0Se5J
 q0LnaDPLjJpMRMgOPg+6e3HR5iqlooX1wzg==
X-ME-Sender: <xms:ULwsaqJSU3ZGUfYTfTfHvUkDGrkZoAz6knspkLRN72dkmhaAlWGU0w>
 <xme:ULwsahfpOAjeeQFoOqDeZonzxOth5iwOqocTQN665ujKaw5W4kvXENFHiPc-NQxhw
 bYtvUQNmu3jDY73PL51YmoAI2sjikN827tQNcmget20GbLVOMoBysI>
X-ME-Received: <xmr:ULwsahqjIqnco2Z3DcLoZTyMFsoOrP0wNMni9j0HG90Y9TI7BFN_QaV06BuMmbh11eW2LBxgLuuRksM5bGGMSNYbNYgx36I>
X-ME-Proxy-Cause: dmFkZTF4d5otJNSy4E5+TBrm5t4/oKNW6ZUmoxVyat81cKms57U/uBMehGj0z5o/f8U0/o
 PK70IhoMQDHia1i8CUjqCHYptK3rsgOvh6V75aLzG/qgZR8GOCrcy2g63bYzQQOxQqQZj/
 9oT1UuiKnf5HDSuvjSqxoI4qcJJc8bRoOgMhp5UWdtRrRuetAFIP6Aax0o1UXRC5743AIG
 ohTJB6VzPihRmorA3Lx8YAKhiMlL0+yMkZd8nQebbDlRgY6+OEVjhF6TdMsRENVLgOl/oT
 e9kd0DiCM7hKkG8v6/VJyviGyBIdYP/hdF4S7lGeNUOAI6uqYDfailcqU2g8IxWFbY33Iz
 +ACooa7G5aLCHNydDMqgIw/A9YbG1rRl+rnyg/YIAD4D6JdEdoAgr2XQjPH8mcmJlRbD3J
 L4/zbRcQgfwyBPi98PR4JOKtv58W0qZNGq2bo6mWTGKoyLqrpZmzB453regdcvZ8yWpZmu
 5lZqhVxLEQEMILodTD6zK1GHSSrZm7GNYXniwmQFVTJUC06+nPk5jOzXfJFTMkjFQnsTua
 s5EZutrLFiC0SlXAMx3G8OW0t7HhwPROcWEkdP0Sg/cm0K2m7YFRY8ECn2xh73b8iO9AwB
 tCQHO9fSd6RcJ4FMQt07rf5E93yDlosmA0AAxIdfE3fyuvVFOzAgwLaVB37Q
X-ME-Proxy: <xmx:ULwsaquT5SmR-xrOGgQFjoa6EFFSjj_YmJFkzvlVLH6-bw1wIgxJcA>
 <xmx:ULwsaiczRhSGXgdtKE6k3bFZWKF6E3kwyRiRHotFTZvhVr9iHcwmsg>
 <xmx:ULwsavqtUT6DHcdKXT_TCM513fG-OiPCsLUvufUASvNxvwu79-mjtQ>
 <xmx:ULwsagTJKGVgV3JEZ3ffGTuu0di_sdwXaiZGwS3tmV3GAsHXbdzfUw>
 <xmx:U7wsaqO7MfduZe3aBiVNiGj0DHVe0CuJke1_63F3DF10oo3uJ_cbzvXT>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 12 Jun 2026 22:11:17 -0400 (EDT)
Date: Sat, 13 Jun 2026 11:11:15 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Kaitao Cheng <kaitao.cheng@linux.dev>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Muchun Song <muchun.song@linux.dev>,
 Philipp Reisner <philipp.reisner@linbit.com>,
 Lars Ellenberg <lars.ellenberg@linbit.com>,
 Christoph =?iso-8859-1?Q?B=F6hmwalder?=
 <christoph.boehmwalder@linbit.com>,	Jens Axboe <axboe@kernel.dk>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Christian Koenig <christian.koenig@amd.com>,
 Huang Rui <ray.huang@amd.com>, Eddie James <eajames@linux.ibm.com>,
 Mark Brown <broonie@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Thierry Reding <thierry.reding@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Sowjanya Komatineni <skomatineni@nvidia.com>,
 Davidlohr Bueso <dave@stgolabs.net>,
 "Paul E . McKenney" <paulmck@kernel.org>,
 Josh Triplett <josh@joshtriplett.org>,
 Peter Zijlstra <peterz@infradead.org>,	Ingo Molnar <mingo@redhat.com>,
 Will Deacon <will@kernel.org>,	Boqun Feng <boqun@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,	Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Waiman Long <longman@redhat.com>, drbd-dev@lists.linbit.com,
 linux-block@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-spi@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Christian Brauner <brauner@kernel.org>,
 David Howells <dhowells@redhat.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Kaitao Cheng <chengkaitao@kylinos.cn>
Subject: Re: [PATCH v2 02/14] firewire: core: Open-code topology list walk
Message-ID: <20260613021115.GA130812@sakamocchi.jp>
Mail-Followup-To: Kaitao Cheng <kaitao.cheng@linux.dev>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Muchun Song <muchun.song@linux.dev>,
 Philipp Reisner <philipp.reisner@linbit.com>,
 Lars Ellenberg <lars.ellenberg@linbit.com>,
 Christoph =?iso-8859-1?Q?B=F6hmwalder?=
 <christoph.boehmwalder@linbit.com>,	Jens Axboe <axboe@kernel.dk>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Christian Koenig <christian.koenig@amd.com>,
 Huang Rui <ray.huang@amd.com>, Eddie James <eajames@linux.ibm.com>,
 Mark Brown <broonie@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Thierry Reding <thierry.reding@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Sowjanya Komatineni <skomatineni@nvidia.com>,
 Davidlohr Bueso <dave@stgolabs.net>,
 "Paul E . McKenney" <paulmck@kernel.org>,
 Josh Triplett <josh@joshtriplett.org>,
 Peter Zijlstra <peterz@infradead.org>,	Ingo Molnar <mingo@redhat.com>,
 Will Deacon <will@kernel.org>,	Boqun Feng <boqun@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,	Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Waiman Long <longman@redhat.com>, drbd-dev@lists.linbit.com,
 linux-block@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-spi@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Christian Brauner <brauner@kernel.org>,
 David Howells <dhowells@redhat.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Kaitao Cheng <chengkaitao@kylinos.cn>
References: <20260609061347.93688-1-kaitao.cheng@linux.dev>
 <20260609061347.93688-3-kaitao.cheng@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260609061347.93688-3-kaitao.cheng@linux.dev>
X-Mailman-Approved-At: Mon, 15 Jun 2026 12:54:17 +0000
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[58];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linux.intel.com,linux.dev,linbit.com,kernel.dk,intel.com,linaro.org,kernel.org,suse.de,gmail.com,ffwll.ch,ursulin.net,amd.com,linux.ibm.com,foss.st.com,nvidia.com,stgolabs.net,joshtriplett.org,infradead.org,redhat.com,perex.cz,suse.com,ideasonboard.com,kwiboo.se,lists.linbit.com,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,st-md-mailman.stormreply.com,lists.infradead.org,linux-foundation.org,bootlin.com,kylinos.cn];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[62];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,intel-gfx-bounces@lists.freedesktop.org];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kylinos.cn:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E64146866D8

Hi,

On Tue, Jun 09, 2026 at 02:13:35PM +0800, Kaitao Cheng wrote:
> From: Kaitao Cheng <chengkaitao@kylinos.cn>
> 
> A later change will make list_for_each_entry() cache the next element
> before entering the loop body. for_each_fw_node() intentionally appends
> newly discovered child nodes to the temporary walk list while the list is
> being traversed.
> 
> Keep the loop open-coded so the next node is looked up only after
> children have been appended. This preserves the current breadth-first
> traversal semantics and prepares the code for the list iterator update.
> 
> Signed-off-by: Kaitao Cheng <chengkaitao@kylinos.cn>
> ---
>  drivers/firewire/core-topology.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Thanks for the patch.

Last September I've realized the issue but not solved yet[1]. A pointer
array would be another candidate to store the found nodes, since IEEE 1394
bus a restriction about the maximum number of nodes up to 256. But It is
too large if put in kernel stack, while it is slightly difficult to keep
it in heap dynamically since the function is called under holding
spinning lock.

Anyway, there is no objection to your change. Let me apply it to
for-next branch so that your further work goes well with no blocks
locating in this subsystem.

[1] https://social.kernel.org/notice/AyDqvLkpwUvI5eyokK


Thanks

Takashi Sakamoto
