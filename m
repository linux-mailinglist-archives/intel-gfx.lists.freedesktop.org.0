Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AB8372A36
	for <lists+intel-gfx@lfdr.de>; Tue,  4 May 2021 14:36:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F24B16EAD5;
	Tue,  4 May 2021 12:36:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB8F26E0B9
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 12:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1620043252;
 bh=kZd8UB1xLhgmFhEX97MG0G9oK15rLkk2XzqLmuYHMos=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=T4/9Ms+BXp/QpjGBOPOf46cMndZWsy8wONGdOAsX1PAexaMvula9qbW/CKda8RFXd
 cWddygI/7mPjpzC0AOqpVt6DU3UEx14cpYA5sU1CQiSHo9kKN3aUUNWi7zlpHAIBjE
 Nt7yghUWj3XzIIEnOTfryDykE42URvXAqQkNftmY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from hos.fritz.box ([91.48.118.51]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mg6dy-1l4lzu0nvC-00hd9m; Mon, 03
 May 2021 14:00:52 +0200
Received: from afrie by hos.fritz.box with local (Exim 4.92)
 (envelope-from <afrie@gmx.net>)
 id 1ldXFr-0004nb-7z; Mon, 03 May 2021 14:00:51 +0200
Date: Mon, 3 May 2021 14:00:51 +0200
From: Andreas Friedrich <afrie@gmx.net>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <20210503120050.GA16864@hos.afrie.home.de>
References: <20210429181450.GA25385@hos.afrie.home.de>
 <20210429235828.GZ1551@zhen-hp.sh.intel.com>
 <161977150734.8550.2371200514024347460@jlahtine-mobl.ger.corp.intel.com>
 <20210430103635.GA16501@hos.afrie.home.de>
 <162002960518.3526.10925040263559391423@jlahtine-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162002960518.3526.10925040263559391423@jlahtine-mobl.ger.corp.intel.com>
X-Provags-ID: V03:K1:7QsUPNDQ/5zFylU3pFLgATHMSHJTADU+U2anLuSCGk2W3Wg9PHz
 euopGouLWC2QhCDkLIvHduE9SA4ne/bgB2ol80z13Xv9jqNnt2o9q7Eij+5spaCBFWST2x+
 2giaAISSZi+9AgHSEyF+ImDBfLAHkonUHJz5KL+Cb++aKxpZYWeIjw4rrynXcLHkdW4BmTk
 yOZrhKuVG1hGdfVxKDstw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nJ773fekpiw=:thbj3ZRdZZV3aziq/zbo2/
 +LaViddDr5+8uGpwcNd3ZM6kWXNBOryIb1tcmDmjitPdcjGXBuf3mRlpzCgCUVDA+cGM6PETL
 NsSQ4XHjblf9W5lSHAD3A4zTrNB9ATx6esbexRlVDkhFqfmbdznMEpoUI9Z84Dc4Ob0doaMWR
 uRjqHPF/iRAX3vXxVEXYsfgdKm/vcW7DFSLDr31etx6oP4qWrWqcVx+/x/Tmfb2AtUed84+7i
 X7B96bZXh3kpLy2kDNB7QvTYqOWMBM5dP+yOxk6b2ZV+YfCbCZNrAZ5qbyVI6FrXUb3LTk0Dd
 Tgaf729QUJyntp3Y3dA2XL4ndTgknwhtEyTDm/nKh50ZCIUI0ohSXCIyShBj7LItO6ohHXHFi
 tlBSAdbLuQVimd2YyXNYp4mgXmcrXBm3kyVGzygTKoyQo11CYngQm2r+yTnwmpxYsqyvfgDl/
 kwz6DrcWBNCurgpJ72I+1cozLG4Hy0OkAAQSNlFukU4J32y/57T2LNSEggcdkAlUjDlQadCgh
 DYs+DveDn20M+OxiS3W4FEtFeZSamws/UnDetBVdsvMQVC4X/cHI0wPPO77eej4v3eledT0oi
 4AX7M17+iVov8tgU+zwRoeUfz1jpyMvM/i2091BXQNIqxewy9X7M7N0TkAJcEH2CBeNdmnGIc
 /92Imh880+anPSHOJ352JQfYwZ3QoS5byKx87yXrFcVPgaERigRAWX4XFM88lMq2y9xz+i/ud
 YBOuG4HEbtZkU29d3ZS+vt0Elhk74eAMtGjYnw4GPqDgS9J0yE2GKZeVgA8GZmkbl2E7cLG2h
 dIX7Gei0lBEcZH8uKl68pYYfEKdQkj2XVze1qvqMWsUssGlteuEupjN8BzA3R2acgfuLckoRD
 lE7PIvkmh8aGAgi137bqeGO8QKukYgptrdUw0sskFes0whUDluFyzcnZDoTFBaM9NQshnPr6k
 D5Q1Q/wEV5vaAylyiEh+cv3v7XHRp5TF7hzjEDceqzsVTp2Ws/w3DG/25bKcaRXjRU/hBDxle
 DLxa2jj0VcoLfFU1mH4BQkPoEKSmADoCoS7p866vQf4+gcWkdCikt5c3O1s8I9vNDc1LlaMTV
 T1Gu7iF6AT/LZF+EwRWHzDGMQqTns23ew9xXZUXF6DWGW6en8sbYAKBUuDh93PlnsFL9lfLYY
 QfvSEP8rIXpiO+AW/yAtS9uwTysiyVEKepP0WcZvyU/NvmOOdXU8xQXWXNw/OH+wWolNs=
X-Mailman-Approved-At: Tue, 04 May 2021 12:36:11 +0000
Subject: Re: [Intel-gfx] REGRESSION with 5.12: Suspend not working on
 Toshiba notebook
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 03, 2021 at 11:13:25AM +0300, Joonas Lahtinen wrote:

Hello Joonas,
...
> It's very possible that it can be i915 bug. What you can try is to
> blacklist i915 module and operate the system with SSH and see if the
> latest kernel still freezes?
This is a good idea. I have disabled i915 in my kernel configuration:
  grep I915 .config
  # CONFIG_DRM_I915 is not set
This time the suspend works fine! So I think it is definitely an i915
DRM bug.
>
> Also, please try drm-tip kernel and see if it fixed there.
I have tried:
  uname -r
  5.12.0-rc8+
but no changes. The system freezes after the first try.
...
> Please do file a bug on the issue tracker as requested:
>
> https://gitlab.freedesktop.org/drm/intel/issues/
Done.

Best regards
Andreas Friedrich
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
