Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB7477F786
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 15:20:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC4DB10E47D;
	Thu, 17 Aug 2023 13:20:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 594 seconds by postgrey-1.36 at gabe;
 Thu, 17 Aug 2023 13:20:03 UTC
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FDE510E47D
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 13:20:03 +0000 (UTC)
Received: from [192.168.1.152] (unknown [222.129.36.197])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id 754EC3F161; 
 Thu, 17 Aug 2023 13:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1692277808;
 bh=ZOFc641//xjZbzZJp1nLBtreufTaSDvxCbK9eKVutvg=;
 h=Message-ID:Date:MIME-Version:To:Cc:References:Subject:From:
 In-Reply-To:Content-Type;
 b=WBwk4JIIulgpRZzERpVDR36OcOC7HqYgqAI61kNL0arckTYXzn+nX6sd4FTAqYaca
 UhxdtU75bS7ugAWZD8eqOYX05kuhGDz21V3iYu/WBKA5EYc2hxWZgM/nIHcLPsBE8q
 9iT7YqxhNhY3OrYRw3qEoLFBbT38jPRAhkdv83Pyvl2x7JSi3Mrjn1eAFDFeBEmjjd
 nsF9aA9M734/OYvFNMlavD6RDfIsC4iH9WPZIShwFsvn2BFYK1e0w/2Hn1rYNyPGYo
 s9JGE96Md+fIxkJnyUTyoLO82f9bSnwDKJBt9VuJOTC/Gr7m3fB9g6m4om+sIgkZRX
 4dMcgO1WUYSuQ==
Message-ID: <838aac7d-dbbd-5a04-7c25-344d8e0512b5@canonical.com>
Date: Thu, 17 Aug 2023 21:10:02 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: anshuman.gupta@intel.com
References: <20230816125216.1722002-1-anshuman.gupta@intel.com>
Content-Language: en-US
From: Aaron Ma <aaron.ma@canonical.com>
In-Reply-To: <20230816125216.1722002-1-anshuman.gupta@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dgfx: Enable d3cold at s2idle
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
Cc: intel-gfx@lists.freedesktop.org, rodrigo.vivi@intel.com,
 lidong.wang@intel.com, stable@vger.kernel.org, jianshui.yu@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tested-by: Aaron Ma <aaron.ma@canonical.com>
