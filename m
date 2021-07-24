Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 835CC3D48EF
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Jul 2021 19:41:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE5F46FA64;
	Sat, 24 Jul 2021 17:41:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D27F16FA64;
 Sat, 24 Jul 2021 17:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=fS/avFUdQMxkSAv5SkN1DS49aprmUYZx7X+PjgA1ZZg=; b=uh9X8+FjRCl3sVhCeZuTYyIipB
 uF1rYX4ManeS6WhaBBKj0PO+uTv+5Amz7S48dPkXdEQac3EaG7X7THI+VifZrMMQ79WUrSxLtfT2J
 vh31qqt9Y84E0DMfskBqGoV1SvlYdX+32OFVYd5xWk4UZez5VipaXM5M5vVcZuT37wGtofVcH6nR2
 L4Bpg17xDp+MQSiUrBiFWmrpzesV4BnKqsSiJJvYwlhKuA5N3ebF7fKVdG9Rmewxr+vG9yftUz01+
 nZCg1ScG93j0EuOVfp+wItosUL95vtd/wjroCfXELp2A7eXtjcPUW4V9hAe8c2D/ouoKIu+961EVf
 EbAv+ydg==;
Received: from hch by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat
 Linux)) id 1m7LeL-00CQtz-HI; Sat, 24 Jul 2021 17:41:23 +0000
Date: Sat, 24 Jul 2021 18:41:21 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YPxQwdEAcNRIX9ep@infradead.org>
References: <20210724001114.249295-1-lucas.demarchi@intel.com>
 <20210724001114.249295-3-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210724001114.249295-3-lucas.demarchi@intel.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: Re: [Intel-gfx] [PATCH 02/30] drm/i915/display: split DISPLAY_VER 9
 and 10 in intel_setup_outputs()
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
Cc: dri-devel@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Still tests fine:

Tested-by: Christoph Hellwig <hch@lst.de>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
