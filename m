Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F05D7480F68
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Dec 2021 04:45:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB0A510E2D4;
	Wed, 29 Dec 2021 03:45:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48FE110E2D4;
 Wed, 29 Dec 2021 03:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 Subject:From:To:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=ycxvVafRYnZACUV8ihkx1B5r3YZSzqaTzX6pwCgdaSk=; b=GV0YbFWxQta3U0kPqNa08pjJw1
 RQvmdXDIZvzdsLvd0ZxVpWZRFjAwbXxQiYI0S0DG2ofAdAqXkVthtaZT9c+A9rz0GplnyyAfh4ICf
 Xj/estXqyQyYbRmD7ryOzByVi+5hOEoQovsrEdOD7+pJzPobBrpxFB6DVpPaA46qWhLocp8wLEwgP
 s+aAmTKaz64agMjbCBVrafHpikf+W9emrx/gUIwwaER0x20pVXWEXGWVOGG7AFb4VNAVUh4dSZ4a3
 afHiqzCKD7n4GCpJlFMVTWoCnTg4tN6joc60ZLEhfounAZWGjVH+Gdh1Ehy8DCjA2FclT2f2kepRX
 0HvprqUw==;
Received: from [2601:1c0:6280:3f0::aa0b]
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2Ptr-008jJp-P3; Wed, 29 Dec 2021 03:45:17 +0000
Message-ID: <aaee1615-00f7-7be2-3e69-1294ebc1a238@infradead.org>
Date: Tue, 28 Dec 2021 19:45:13 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
From: Randy Dunlap <rdunlap@infradead.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [Intel-gfx] question about an intel-gfx issue (4447)
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

Hi,

For https://gitlab.freedesktop.org/drm/intel/-/issues/4447,
are people aware of it or do I need to make people aware of it
somehow?

Do I need to provide more information? If so, what?

thanks.
-- 
~Randy
