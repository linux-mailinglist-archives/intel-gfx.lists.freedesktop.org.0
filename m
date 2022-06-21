Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 719CC552B98
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 09:17:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 142BC11277E;
	Tue, 21 Jun 2022 07:17:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 827AD11277E
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655795853; x=1687331853;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ljBqo+A9lbrYBbqjLXuUNv6Y0ivZplsgeKuf6XyiGnk=;
 b=PPyIrNqP8OCVGtvGVzCgIlw4/RzznMqEvMb8TJ2pMIMzcm1cEJ1ffWub
 oMyA0aEsvHEf0d60gwHjAVmRo4urqoDboCoKRT7pS/ttzOMZMTCJUVd3/
 bJV1As9EJo+aOwEEZId1WTGH9pCdw4fj6Ek7JVWBi+gCmrWIhDKexk7NI
 NxRyApLJD6mPbNyf1j8HXqXXgQIpdM3Sk6fnc9HLoUgmmSEjuqz3qQKfV
 QCkYUp0dxP96XD1DxHsYrzKqgq+2vR+dxyOeo0CcdAWmRfiFcAVVrylPS
 fp1QCOfGIEafV2opw62V2pUPCgXN+vQ2kDMrl3cD4k4Qn7wUhWw1YJXdM Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="280096680"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="280096680"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 00:17:33 -0700
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="643492456"
Received: from rgrotewx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.35.153])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 00:17:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB31778B9F5ACB76E68A804074BAB39@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220602141850.21301-1-animesh.manna@intel.com>
 <20220602141850.21301-5-animesh.manna@intel.com>
 <877d5zp03q.fsf@intel.com>
 <DM6PR11MB317731387DD58F011B998298BAA19@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87wndynsat.fsf@intel.com>
 <DM6PR11MB31778B9F5ACB76E68A804074BAB39@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Tue, 21 Jun 2022 10:17:28 +0300
Message-ID: <87letqscxj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC PATCH 4/5] drm/i915/display: prepend connector
 name to the backlight
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

On Tue, 21 Jun 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> On Fri, 03 Jun 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> >> On Thu, 02 Jun 2022, Animesh Manna <animesh.manna@intel.com>
>> wrote:
>> >> > From: Arun R Murthy <arun.r.murthy@intel.com>
>> >> >
>> >> > With the enablement of dual eDP, there will have to exist two
>> >> > entries of backlight sysfs file. In order to avoid sysfs file name
>> >> > duplication, the file names are prepended with the connector name.
>> >>
>> >> Fixed by 20f85ef89d94 ("drm/i915/backlight: use unique backlight
>> >> device
>> >> names") about a year ago.
>> >>
>> > This patches checks if the return value is -EEXIST and then acts accordingly,
>> but -EEXIST is not returned.
>> > struct kernfs_node *__kernfs_create_file(struct kernfs_node *parent,
>> >                                          const char *name,
>> >                                          umode_t mode, kuid_t uid, kgid_t gid,
>> >                                          loff_t size,
>> >                                          const struct kernfs_ops *ops,
>> >                                          void *priv, const void *ns,
>> >                                          struct lock_class_key *key) {
>> >         struct kernfs_node *kn;
>> >         unsigned flags;
>> >         int rc;
>> >
>> >         flags = KERNFS_FILE;
>> >
>> >         kn = kernfs_new_node(parent, name, (mode & S_IALLUGO) | S_IFREG,
>> >                              uid, gid, flags);
>> >         if (!kn)
>> >                 return ERR_PTR(-ENOMEM);
>> >
>> > So the condition check with not be satisfied and the backlight registration
>> will fail for the 2nd backlight device.
>>
>> But the file isn't added by kernfs_new_node(), it just allocates the node. See
>> the kernfs_add_one() later in __kernfs_create_file().
>>
> Moreover now that we will be supporting dual display, wouldn't it
> be better to have the same file naming convention for both the
> displays?
> Without this patch, the first backlight would create an interface
> with name intel_backlight and for the second it would create as
> "cardXX-XXX-backlight". There wont be any similarities in the
> backlight naming convention.
> Would it be better to maintain the same naming convention
> across the displays?

The old name can't be changed.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
