Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1456D9D86
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 18:27:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A00910EC5C;
	Thu,  6 Apr 2023 16:27:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from omta35.uswest2.a.cloudfilter.net
 (omta35.uswest2.a.cloudfilter.net [35.89.44.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EED510EC57
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 16:27:17 +0000 (UTC)
Received: from eig-obgw-6001a.ext.cloudfilter.net ([10.0.30.140])
 by cmsmtp with ESMTP
 id kQa5pc2CcE9lPkSSCpwWlX; Thu, 06 Apr 2023 16:27:16 +0000
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with ESMTP
 id kSSApN4RmchbxkSSApUU6v; Thu, 06 Apr 2023 16:27:14 +0000
X-Authority-Analysis: v=2.4 cv=KI5JsXJo c=1 sm=1 tr=0 ts=642ef2e2
 a=1YbLdUo/zbTtOZ3uB5T3HA==:117 a=r5y7L3YFV7pC399TSlF17w==:17
 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19 a=IkcTkHD0fZMA:10 a=dKHAf1wccvYA:10
 a=wYkD_t78qR0A:10 a=_Wotqz80AAAA:8 a=VwQbUJbxAAAA:8 a=QyXUC8HyAAAA:8
 a=5PrvhKeIWMso7PqsVc4A:9 a=QEXdDO2ut3YA:10 a=buJP51TR1BpY-zbLSsyS:22
 a=AjGcO6oz07-iQ99wixmX:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lV0u8gCzN+IVJnUOSxifOKoxf9sWC9J5lL5XQpoJLvo=; b=GW5vBFG8RNacOKxrvZIq9qCZzf
 miMkjyb/m61EfNcnfNBlyT9HaIt8j5v1iQT7sb/qhYLUgG27dGGeVZ0YWpF2swgs67QssFrEJ1CI4
 jk56vZs7kU48nCC5hb7q2OFlHScCDlyTKSKVfb+acgN1kBeMaJ6iZg2Ggf9jwY+enI0shFYSiudDN
 ONMpOvMzbbygGQjCgZ6jV7g537ihKqQ5xOGADQgWHBXjK0GHD6fUmuLUq0KT3BSSdPthPN3qbIJ63
 yv0IuE+A5RXa/DnxQ4STpskWezTCgef30Fo+n/HfODTruPstLHQoZoGvJNsy13OqM8G9iv2D5XsDY
 NRaJiGtw==;
Received: from 187.184.158.238.cable.dyn.cableonline.com.mx
 ([187.184.158.238]:28874 helo=[192.168.0.24])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.95)
 (envelope-from <gustavo@embeddedor.com>) id 1pkSS9-003zjR-7q;
 Thu, 06 Apr 2023 11:27:13 -0500
Message-ID: <e84ea7ad-e804-325a-a17b-5a939e0fc61d@embeddedor.com>
Date: Thu, 6 Apr 2023 10:27:55 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
References: <ZBSu2QsUJy31kjSE@work>
 <ef8d083a-a82b-669c-0b0a-959e0f120a26@embeddedor.com>
 <87ileh2yky.fsf@intel.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
In-Reply-To: <87ileh2yky.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.freedesktop.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.184.158.238
X-Source-L: No
X-Exim-ID: 1pkSS9-003zjR-7q
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187.184.158.238.cable.dyn.cableonline.com.mx ([192.168.0.24])
 [187.184.158.238]:28874
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfLWrMdRDc+E4lrvzibbkzrTVEd+MQ4U4bGTlddpsMAjU66DcOASPV8DmgY6s5ahgF/Tvi3Ue4xLA4Jw8AVA5UGv7GJh+f1G0GXb7R5slyUq9vq0IY3Sf
 pEeH0FWzulkZ7B/cIfgsIDQ/8PWIudr7sKoqy7MZraqp4WyDtkF2FNePr2KoS1dMt1zpvJzB9fZKF1So4aKOpHEud5z1SJWFNICm4JX5P21zRHMzU8uFdzJl
Subject: Re: [Intel-gfx] [PATCH][next] drm/i915/uapi: Replace fake
 flex-array with flexible-array member
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-hardening@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 3/31/23 01:02, Jani Nikula wrote:
> On Thu, 30 Mar 2023, "Gustavo A. R. Silva" <gustavo@embeddedor.com> wrote:
>> Friendly ping: who can take this, please? 😄
> 
> It's in drm-intel-gt-next.

Awesome. :) Thank you!

--
Gustavo

> 
> commit 02abecdeebfcd3848b26b70778dd7f6eb0db65e1
> Author:     Gustavo A. R. Silva <gustavoars@kernel.org>
> AuthorDate: Fri Mar 17 12:18:01 2023 -0600
> Commit:     Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> CommitDate: Tue Mar 21 08:41:18 2023 +0000
> 
>      drm/i915/uapi: Replace fake flex-array with flexible-array member
> 
> 
