Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B9C8A198F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Apr 2024 18:12:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB40A10F1CD;
	Thu, 11 Apr 2024 16:12:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=sipsolutions.net header.i=@sipsolutions.net header.b="kxLPMzVZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2065 seconds by postgrey-1.36 at gabe;
 Thu, 11 Apr 2024 16:12:12 UTC
Received: from sipsolutions.net (s3.sipsolutions.net [168.119.38.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3506710F1CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Apr 2024 16:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
 Resent-Cc:Resent-Message-ID; bh=WE1dyOcRCkdDKHVQSE8grhwnH0jVKprFA2u7hDTWTaw=; 
 t=1712851931; x=1714061531; b=kxLPMzVZivRji81aJLQ4SU6Ldfh1PTxctiWv+RkDkxbB9El
 1N4S4nfzIOd/dj+XJ09XkGgJqw9pzsMIV6j240WsZ2rO3d0GRY7kovp7NJ8AAFWjQ3mDk+tMeZAQo
 U9MS703qfKhJtSuVcb7Ss5jP1DRvwtYuIlzM3iJFi9b9BeHGYvx3DtLI/rSAqK0cK0+K7qR2P+YyU
 1com+sheMyluokkL+MOe/X9SpPq7Tda8tqzcZHMiIfFmDAlZEAUtM5UnBl7V7m1FUOVBC3QBTzjPk
 XfYTBdOqq7rMV/iPCfliTfY8CIybiWz32yr2T4UiGtRP58lhHXH2203boUTul18A==;
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.97) (envelope-from <johannes@sipsolutions.net>)
 id 1ruwUh-00000002nXW-0s48; Thu, 11 Apr 2024 17:37:43 +0200
Message-ID: <d2a0cf345c7e049ffd76acd315e6b377d94a344c.camel@sipsolutions.net>
Subject: Re: [PATCH] treewide: Fix common grammar mistake "the the"
From: Johannes Berg <johannes@sipsolutions.net>
To: Thorsten Blum <thorsten.blum@toblux.com>, kernel-janitors@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-s390@vger.kernel.org, speakup@linux-speakup.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-wireless@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-afs@lists.infradead.org, 
 ecryptfs@vger.kernel.org, netfs@lists.linux.dev,
 linux-fsdevel@vger.kernel.org,  linux-unionfs@vger.kernel.org,
 linux-arch@vger.kernel.org,  io-uring@vger.kernel.org, cocci@inria.fr,
 linux-perf-users@vger.kernel.org
Date: Thu, 11 Apr 2024 17:37:41 +0200
In-Reply-To: <20240411150437.496153-4-thorsten.blum@toblux.com>
References: <20240411150437.496153-4-thorsten.blum@toblux.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
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

On Thu, 2024-04-11 at 17:04 +0200, Thorsten Blum wrote:
> Use `find . -type f -exec sed -i 's/\<the the\>/the/g' {} +` to find all
> occurrences of "the the" and replace them with a single "the".

I estimated that this misses at least ~50 instances split across lines:

$ git grep -ih -A1 -e 'the$'|grep -vi 'the$'|grep -E -- '^[^a-zA-Z0-9]*the =
'|wc -l
51

And a bunch that have more than one space:

$ git grep -E '\<the\s\s+the\>'|wc -l
20

So not sure you should claim "all" ;-)

johannes
