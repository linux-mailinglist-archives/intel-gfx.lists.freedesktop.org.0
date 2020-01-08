Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B1A1345B9
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 16:08:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E59636E8A5;
	Wed,  8 Jan 2020 15:08:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 528E16E8A5
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 15:08:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 07:08:00 -0800
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="215977693"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 07:07:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <157849474809.2273.10126647469755480457@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1575560168.git.jani.nikula@intel.com>
 <600101c8433e7caf9303663fc85a9972fa1f05e7.1575560168.git.jani.nikula@intel.com>
 <157849474809.2273.10126647469755480457@skylake-alporthouse-com>
Date: Wed, 08 Jan 2020 17:07:56 +0200
Message-ID: <87sgkqouk3.fsf@intel.com>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 08 Jan 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Quoting Jani Nikula (2019-12-05 15:43:40)
>> +static int i915_param_int_open(struct inode *inode, struct file *file)
>> +{
>> +       return single_open(file, i915_param_int_show, inode->i_private);
>
> What I've always wanted with this style of approach was a means that the
> parameter is only set while the debugfs remained open.
>
> 	fd = open("/debug/my_parameter", O_WRONLY | O_EXCL);
> 	write(fd, "1", 1);
>
> 	... run test ..
>
> System reverts to default on process termination, or explicit close(fd).
>
> I'd make the open implicitly O_EXCL, i.e. return -EBUSY if something
> else already holds the parameter set. Or, you can use the O_EXCL to
> select between the different modes of operation.
>
> Moving the parameters to debugfs is more than worth it imo if we can
> enable this mode of operation.

I understand the use case, and I'd like something like that. But
(obviously?) I think the regular use case of 'echo 1 >
/debug/my_parameter' needs to work as one would expect.

Reading open(2) man page, feels like using O_EXCL for this would be a
hack. Granted, it's debugfs to begin with, but still. Makes me a bit
hesitant about abusing O_EXCL for this. (Or am I missing something?)

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
