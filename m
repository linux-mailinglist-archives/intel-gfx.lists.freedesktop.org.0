Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 478E213454C
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 15:46:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A82FE6E30D;
	Wed,  8 Jan 2020 14:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E5796E30D
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 14:46:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19810006-1500050 for multiple; Wed, 08 Jan 2020 14:45:49 +0000
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <600101c8433e7caf9303663fc85a9972fa1f05e7.1575560168.git.jani.nikula@intel.com>
References: <cover.1575560168.git.jani.nikula@intel.com>
 <600101c8433e7caf9303663fc85a9972fa1f05e7.1575560168.git.jani.nikula@intel.com>
Message-ID: <157849474809.2273.10126647469755480457@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 08 Jan 2020 14:45:48 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/params: add i915 parameters to
 debugfs
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2019-12-05 15:43:40)
> +static int i915_param_int_open(struct inode *inode, struct file *file)
> +{
> +       return single_open(file, i915_param_int_show, inode->i_private);

What I've always wanted with this style of approach was a means that the
parameter is only set while the debugfs remained open.

	fd = open("/debug/my_parameter", O_WRONLY | O_EXCL);
	write(fd, "1", 1);

	... run test ..

System reverts to default on process termination, or explicit close(fd).

I'd make the open implicitly O_EXCL, i.e. return -EBUSY if something
else already holds the parameter set. Or, you can use the O_EXCL to
select between the different modes of operation.

Moving the parameters to debugfs is more than worth it imo if we can
enable this mode of operation.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
