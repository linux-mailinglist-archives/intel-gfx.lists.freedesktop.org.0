Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0413F84763A
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 18:35:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 706A610E3EC;
	Fri,  2 Feb 2024 17:35:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aNJ3xVWn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5684210E3EC
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 17:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706895343; x=1738431343;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=vrjYHIZVnVuWsswnKfA/wY3pnZE5xmWSAAm3v9JVja8=;
 b=aNJ3xVWnI4rUV4QvmzfQ5+uAQNdxRPCj+qJSWHEKMSfx0OJjFugD64O4
 kTvyKsaOPQpTgP19d1dXKfdde8ucx2bmXk0LqxBbGvPr73gaEKEDKVCAD
 9QRT4O59CbyVpYzY6yv9fcYC0k1VvEXdLy2KzUOQe/t3A6fhXRCf3AXbC
 NLHbvn0YuFvXQqxDUKu+16LMjDPaBwSAP0kmh51mJ07NcvQwg6V/ap51D
 qfM3G3IloCZfhKw1DY4qlJ9083QipE3PBj61TXzMRJ+F5y5qBdWSnUY2F
 1Wk7OH/b+mulPh4ibf7pY3LKBoKLwWFQycGbRV0z8Um2MHtP3QB6x7NHH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="10805721"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="10805721"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 09:35:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="4885095"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2024 09:35:43 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 09:35:42 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 09:35:41 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 2 Feb 2024 09:35:41 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 2 Feb 2024 09:35:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ke89wURowygKkudpK4MWeAtF1q2YMIKsgUAXyOAo4fGDfhoPmZrrPQUM8+uCcTEIz6qGnKszOUGQw+KvRykk4iYArkEGNDEpeTLZQS8SlyJvVVZs19cI1wjbgpppD2oZKOwmfR8U694P4KUHe1Anqj6JXpFFIV8HmwT0b2kc0iuRg1agwMLdmMsrjPzbt9tLovt3DkDSYDu4StuqTkMRTI8rnOCTqQleY84yjJUBJYekxbruJrQkTEOEXSS4XRmd5a93S07GBhF37XdwsThHX4u1jgv3q7LJ9Zmc73pSfxWTcdHbOTyRLlANoTPWpNDntjc5MOfuYks2/l4L7JSkBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WfJWPi4riQ10zwB77025PjszZuCdCOOf8bO2w1HNrbM=;
 b=b09udPdXDaC4ziF3CZDCTeRwlB/t25n5Tk3RpTOxWr7ScXOhAKK/EO+V9GJeWgY4HMd0F4oX3Y7Xbjomfm5SX2IVxpoc3gsQf/9GZG2ivfTkOPBBJRW0UjTeFWMyjBIhUO3Pfb2++7RKESSCWbBtCC1ZjKIBc925a7rRUdVtbRxS6pZrKtuiY0FmP5WY8Jfl9NMQf+JWtTJwu10EW3eZitKFTHRgx95RpeVOtXYBYn59gZAakheFdst6CEnm1UUJ0KdnanrpqkV6t9VngdNTVZ/my187jTko6ngm/PsRyjtit50ut1i2MvF/88I+E1cEbpFn2uLuHDcdeRdlnnE2Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DS0PR11MB6493.namprd11.prod.outlook.com (2603:10b6:8:c3::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.26; Fri, 2 Feb
 2024 17:35:39 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9f32:ce50:1914:e954]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9f32:ce50:1914:e954%7]) with mapi id 15.20.7249.025; Fri, 2 Feb 2024
 17:35:39 +0000
Date: Fri, 2 Feb 2024 11:35:33 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: Greg KH <greg@kroah.com>, Sasha Levin <sashal@kernel.org>,
 <stable-commits@vger.kernel.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 <intel-gfx@lists.freedesktop.org>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>
Subject: Re: Re: Patch "drm: Fix color LUT rounding" has been added to the
 6.7-stable tree
Message-ID: <4rfubhgx5ro6uyril7labgxoovuj26funttdts6bbcrbdfjxlj@mrwxtts657g2>
References: <20240201170320.69864-1-sashal@kernel.org>
 <ZbvdXx7-GSUljUh1@intel.com> <2024020119-user-aviation-b3c5@gregkh>
 <ZbvkbJFs-hQ1wi4o@intel.com>
 <2024020120-unclog-junction-8a5f@gregkh>
 <Zb0d7xIFMhZpTXsW@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zb0d7xIFMhZpTXsW@intel.com>
X-ClientProxiedBy: YQZPR01CA0002.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:85::16) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DS0PR11MB6493:EE_
X-MS-Office365-Filtering-Correlation-Id: 813d1b6c-14c4-4def-c708-08dc24155f7f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b0gKjPdlQqWkcVkKijRMcMEC6fX5/61y3tOelOoEqFK50BAQGU3DKkVuEtkYvevQvQ9cj7KyAM+SNqdezLgTY9XH2Usj0JbJEE2X6qoNDVhKap4vevAkoB8QFm0vZTwbyHivwkEmNdM0qshp9zu068A2AHk3vXlvZXKp+6qVYZzjUdK/7QCwgOB5iPRQXBM2I5gAdzTlGwgU7lyWCEtBeuksleLP+JMMEHa+QPtNQ1ExMHOZNO7YhRf5RCdG1cHgL/pjUeOzezw2vQsDNnDVCMABN22CI9HTZG2cXtmjTizUduzHjqhos4sDGj0DOuBQ7WR5Twd2Q1135eCTRzBfkr7G54Jn0uFuCTKDYT8dqZZYuXN+oVjGoIUHMlks3V/EVwvxG2gfRtlHon0i5ZGyDIIT1Nv7qP4W7XomuCIcAgLhUwtUAJxJioWBVCzD5FhJ12LPJwh47yMrWt8r7UmKqFC1fEYfohGl9PdtpX8eGwtisK96XjOqZ+h3H1noVwszHZVVBJ2Yfskb9UNsrqmWvZzVWkz3Nlfn17x47C32LxQfw92w9s3GbQ0rtkfNOtaQEk5FNVLKqXhIHXQE7csVVg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(346002)(366004)(396003)(376002)(136003)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(33716001)(41300700001)(26005)(66574015)(38100700002)(966005)(6486002)(6506007)(6666004)(9686003)(6512007)(478600001)(82960400001)(66946007)(2906002)(5660300002)(86362001)(66476007)(54906003)(6916009)(66556008)(316002)(4326008)(7416002)(8676002)(8936002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?HllWIUECCQZMTg/ja1VJD2aBbBpIDuT3kq7o57vLBFokfOTTxEpB0jg9qg?=
 =?iso-8859-1?Q?A70qdeAeJI94qGxDuO6WVPsm6xlZcXm9eH3ULPFe88M+rDumxCAiql3d6F?=
 =?iso-8859-1?Q?rq5DkfW4Ll0i+LaLQGGJarRAJRsmZyJUS3EJoy/FcE+Hn9HdFLk2YXtezU?=
 =?iso-8859-1?Q?37FtX4nti7XDu8YkAcg1HMQ0YOzqJn45E/40nh33RiA4ZOAthjHnAbdDUS?=
 =?iso-8859-1?Q?Yorrsygs85lfpQlYR5dLCb/832LdhkqXQIRnSjtZYs1CDwmqMnWvdsotjf?=
 =?iso-8859-1?Q?EmO1rKJNMACfESi62w68j8Mw2AboOubOVpLnTm+NMbU1ehVtT6jzpYb5Io?=
 =?iso-8859-1?Q?9Mul0U7pN+itKf8rk8Wcf5Yt4MXJUhsUbMHKCjXzLiXf+sE/zEsql1656f?=
 =?iso-8859-1?Q?HsPTtsI2YPCmmfyPQ19Dncwqbe9rGTF7B9nKM6NsfMgSB9i7uhRQwnBCp3?=
 =?iso-8859-1?Q?i3fK1pLREd7Shx9hU573nO8texFx1EyHbtmpKS4HoJEUKbhqPInevOtA0D?=
 =?iso-8859-1?Q?RvHXxXNR+xPewpFOojR4M8KtGSFTpMlygQazFwmLoxQKN+Dso0cqFNGh/Y?=
 =?iso-8859-1?Q?FXUMeTSiZ5DlSrZC/Fk2nWbnYtZ2fd0IWAyahk6Rwx5iiIrMNz3JSKmel2?=
 =?iso-8859-1?Q?ft+xQTpHRstDWv3suWpOp7oZrSeo6qcAJ4FoxHwR3RGoMw80wEHZuBON80?=
 =?iso-8859-1?Q?xymRLbCy4+WWix+tZ/bugg+biK8PqCQRRGk9FnQzcMmnEdCwcHigSZWly9?=
 =?iso-8859-1?Q?dpEteeujtIpE5SF7qKfs0YKsP92Q7jVJ0eTp/25zWXp88unW6iyc2/GFwT?=
 =?iso-8859-1?Q?U1rpqBy9mBCb70XQWXKLh8UxGrDMXQXhAl8Qz6lp1pmi+37qzmGrB4Hd6W?=
 =?iso-8859-1?Q?9Z6KCl5HlEjm3KKlCLWtDOCvjAIkNvlT1UvQRrwcfMfMtcTdomcsZG0uBr?=
 =?iso-8859-1?Q?cu9r+LIlaOXm1+MVrwSJaMHtzcwWJdNHK4cmKoMoKiGCKhvbW1q6b/JGeK?=
 =?iso-8859-1?Q?u3cN8h4liThMq6K/yC6EHaBTrJJkyNhxzbVnegdgaNj8eyZqSXtAumpTOO?=
 =?iso-8859-1?Q?ZUVRjLc1kQFfoiQVVC9ZQl8va1um0Rnqm1KHW4Y3MswetdtwqWj/lCcbiH?=
 =?iso-8859-1?Q?qj6RsUu4nk/bbEEW38PQPb1yxZ9FcQU1uANo9v1Ie8/aaPIg/mXq9HO3x5?=
 =?iso-8859-1?Q?gBrk7hjfVMlpSWxz9rsEeeIHgliSSoDJXN343p6QfSTmcUzvXazJVeinSn?=
 =?iso-8859-1?Q?YfUVcw8xzJV4LnmAMdTIXp/SyfWGzmFEdHmBx0RJpGujPPy5VUDSTzlP8o?=
 =?iso-8859-1?Q?5U3mw5cbk2SAm6Y9WQJbJW3cJAyOA15TYfbx0dlf59jm8sdGP4oGTgxtwv?=
 =?iso-8859-1?Q?hZy+DPAN5un5l32rsg/8Y/quJJlnhIQhIFMmLBlUuBNCr5cmepEi1n5jG1?=
 =?iso-8859-1?Q?j3HcLUC0ZbfbXsUyjEIwMbZ/07KEfjgtuUBFgMEwVvkASO2e3w3NgsaS7x?=
 =?iso-8859-1?Q?97fmGoC1M+Izt6qSj/h0kr+c4ijJnn8jrbkYOdxshRqxfo5zoW/hIvqJEF?=
 =?iso-8859-1?Q?ZKJm9GhWMkGp/A2XQsyiUStze1li7OLX5txSGeBX6+ysHGrQ6E2CcD/RCb?=
 =?iso-8859-1?Q?qjXV2ioucEGSWJ2bQTQXz87yUG3CF9rpbEn2y6mAIKSW2uuWjijXYKhw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 813d1b6c-14c4-4def-c708-08dc24155f7f
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 17:35:39.7231 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: raTN9gYByP2+ug2ZVDNt+HSI2JLUb7k6F0Vj4WkuF7Pcjrzh6j/RJLxfqJ57wIQKtf/fDva+WXKayWkrSsqcGlvQ0Qj+YxD0BAD0Vv/iP4c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6493
X-OriginatorOrg: intel.com
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

On Fri, Feb 02, 2024 at 06:53:03PM +0200, Ville Syrjälä wrote:
>On Thu, Feb 01, 2024 at 11:17:28AM -0800, Greg KH wrote:
>> On Thu, Feb 01, 2024 at 08:35:24PM +0200, Ville Syrjälä wrote:
>> > On Thu, Feb 01, 2024 at 10:16:48AM -0800, Greg KH wrote:
>> > > On Thu, Feb 01, 2024 at 08:05:19PM +0200, Ville Syrjälä wrote:
>> > > > On Thu, Feb 01, 2024 at 12:03:20PM -0500, Sasha Levin wrote:
>> > > > > This is a note to let you know that I've just added the patch titled
>> > > > >
>> > > > >     drm: Fix color LUT rounding
>> > > > >
>> > > > > to the 6.7-stable tree which can be found at:
>> > > > >     http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary
>> > > > >
>> > > > > The filename of the patch is:
>> > > > >      drm-fix-color-lut-rounding.patch
>> > > > > and it can be found in the queue-6.7 subdirectory.
>> > > > >
>> > > > > If you, or anyone else, feels it should not be added to the stable tree,
>> > > > > please let <stable@vger.kernel.org> know about it.
>> > > >
>> > > > I guess I wasn't clear enough in the other mail...
>> > > >
>> > > > NAK for all of backports of this patch.
>> > >
>> > > Ok, but why?  It seems that you are fixing a real issue here, right?  If
>> > > not, the changelog is not clear with that at all...
>> > >
>> > > I'll go drop it now, thanks.
>> >
>> > Because backporting it would require other backports that depend on
>> > the rounding behaviour.
>> >
>> > Can I somehow fully opt out of these automagic backports?
>> > If I want my stuff backported I'll ask for it.
>>
>> You can, just let me know what exact files should be ignored, or you can
>> send a patch against this file:
>> 	https://git.kernel.org/pub/scm/linux/kernel/git/stable/stable-queue.git/tree/ignore_list
>
>I think we should add at least i915 and xe there. cc: maintainers

It does feel a little wild to decide a patch needs to be backported
based on the commit title starting with "Fix", or whatever way was used
here. We always relied on patches being backported based on a) having a
Fixes: trailer and  b) the commit pointed out in that trailer
being present in that stable version. Or the others options shown
in Documentation/process/stable-kernel-rules.rst

Looking at the commit in question, c6fbb6bca10838485b820e8a26c23996f77ce580
there's no such a trailer. Did I miss something from
Documentation/process/stable-kernel-rules.rst?

Lucas De Marchi

>
>But I can't really make that kind of decision for the whole
>drm subsystem (even though I'd like to), so I was hoping to
>have a name/email based blacklit to make sure nothing I
>wrote gets automagically backported. But I guess that's
>not a thing.
>
>-- 
>Ville Syrjälä
>Intel
