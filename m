Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D96D53C5A2
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 09:02:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC1A4113D7D;
	Fri,  3 Jun 2022 07:02:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B742D113D7D
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 07:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654239743; x=1685775743;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=a6P65AHi3bhmbo5c17gpHFbkHZ6NjqBCGXYyuqsSsIk=;
 b=Jb+Tu31W2CV5J0c9+2WQOBb9j9UM0Rg6RsB5j/Yc95li1caUheTuzT0d
 49sQnIvUnEu/90a+FbQz410OslCdgkXoPjMDP3Lpyxwl+jz8qyoAMzXJ7
 sp8yKwRu6KzQoTHW5GtjRScJHN+ayyuN7k6TVD4kkNm/81sZS8YZQ5i+V
 SJw1mWQkiGSe/DyJMThsqbtoN3VZ2bFM72lw/szhw0W+aDjEZlh0U8W37
 AdLUb6ysb99sYCJhzQ272J1pyVhgplXqam4csTY4FMfVxNFiY47HCFP1I
 sWzemgQpDaBk3ToAGTBE0d6nNECmhrnQbtzshy+9qbB8eCQQEkbA2KiT9 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="274989905"
X-IronPort-AV: E=Sophos;i="5.91,273,1647327600"; d="scan'208";a="274989905"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 00:02:23 -0700
X-IronPort-AV: E=Sophos;i="5.91,273,1647327600"; d="scan'208";a="577901975"
Received: from richardf-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.27])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 00:02:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB317731387DD58F011B998298BAA19@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220602141850.21301-1-animesh.manna@intel.com>
 <20220602141850.21301-5-animesh.manna@intel.com>
 <877d5zp03q.fsf@intel.com>
 <DM6PR11MB317731387DD58F011B998298BAA19@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Fri, 03 Jun 2022 10:02:18 +0300
Message-ID: <87wndynsat.fsf@intel.com>
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

On Fri, 03 Jun 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> On Thu, 02 Jun 2022, Animesh Manna <animesh.manna@intel.com> wrote:
>> > From: Arun R Murthy <arun.r.murthy@intel.com>
>> >
>> > With the enablement of dual eDP, there will have to exist two entries
>> > of backlight sysfs file. In order to avoid sysfs file name
>> > duplication, the file names are prepended with the connector name.
>>
>> Fixed by 20f85ef89d94 ("drm/i915/backlight: use unique backlight device
>> names") about a year ago.
>>
> This patches checks if the return value is -EEXIST and then acts accordingly, but -EEXIST is not returned.
> struct kernfs_node *__kernfs_create_file(struct kernfs_node *parent,
>                                          const char *name,
>                                          umode_t mode, kuid_t uid, kgid_t gid,
>                                          loff_t size,
>                                          const struct kernfs_ops *ops,
>                                          void *priv, const void *ns,
>                                          struct lock_class_key *key)
> {
>         struct kernfs_node *kn;
>         unsigned flags;
>         int rc;
>
>         flags = KERNFS_FILE;
>
>         kn = kernfs_new_node(parent, name, (mode & S_IALLUGO) | S_IFREG,
>                              uid, gid, flags);
>         if (!kn)
>                 return ERR_PTR(-ENOMEM);
>
> So the condition check with not be satisfied and the backlight registration will fail for the 2nd backlight device.

But the file isn't added by kernfs_new_node(), it just allocates the
node. See the kernfs_add_one() later in __kernfs_create_file().

BR,
Jani.

>
> Thanks and Regards,
> Arun R Murthy
> --------------------

-- 
Jani Nikula, Intel Open Source Graphics Center
