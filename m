Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A3E88FFDE
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 14:09:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F1A61123DD;
	Thu, 28 Mar 2024 13:09:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hK0f958l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D275112153;
 Thu, 28 Mar 2024 13:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711631381; x=1743167381;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=PyT9jZbLzyl0LSQVtczBlc0Ogsfoskfi6klb/FVyBOw=;
 b=hK0f958l4+WM7XaplhNSjLQjlm1+G7/VRSwWbqQzestE3ANWmxPFmDqr
 VzCpj55JqXYJqpYWCMonl2w6CwVL9JXVzuigpIH+vFf0lFi0hWT17kFXc
 2I3C8n3MR/IpbAOWphBhISE3KGhhaU4KP3XAPw9nNSqAlpEN4MZB1VcnJ
 L0Rq5T6BiaAmmvXpEIqb4arr05Y+y3Uub+kW4rpAJ5gdcTsgZ0vuiz7Do
 hZdF5llrN68C39LjTcmI/HQ41oWqjUrT7DJMZ0CLIMRLx/mKTqYtTU9dQ
 gI57ymjvhDJfIQYPuM2A77JcGhZXh0NUXPzm5odSD/+2jmrx/DqbpS9it g==;
X-CSE-ConnectionGUID: hkQr3CPPQOS5hWqpZbYExg==
X-CSE-MsgGUID: 16kC3ocXS+2N0//2gYaY6w==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="10566486"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="10566486"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 06:09:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="47618582"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 06:09:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 06:09:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 06:09:40 -0700
Received: from outbound.mail.protection.outlook.com (104.47.56.168) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 06:09:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tc8XrzvsLk6qT5212zQKj4wjgcraJoXwDQlFkOjxSXQ0T5Qd/NzMrPmoUKDyDLUxp5YcF78j8Udf8KZSLHDGfBMwnbQ8kAiVJKEJb0GO2uWWB/pMsItGUP6/swGnxn+oovlA3JIRZOQ67IrUWAGWnWF2X9P5kpqK2WtSGflOf/CDLLdQ44ym8EDEVRXrA8VS5m64E2tGBmdS7tBJX8pWvxIm3xza5c0NPEVXboofBDEAVoy8QlUwulvgULSyo13e04W1O7Y3bJTJcSy0uPTQIjDLJvhe9BIqc4djcbWzjqHboCvDlvle483+FDfcfVTttG0n3PF0Aai3CV2WYN3sGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2ly9UP7qeKzllavhBnwqzZ79QiDPI6dTQL1eYfYSVzE=;
 b=f3+klLSvc4mNSTuTa7h4LB/OozQ2TBpHQAKzObGf6lbZ0iYNzKDSOtIYZ5KNycBZI0JR9XvKT7NjSx3EErhY6oGVSfYDpw81+ITkTSnRuGsIVwUFjS41J3zpkGVDpP0PwBi6oLtiWU/sJZkAE0f/MtryzDXwgzTTBv/IigXa9xRwLFJncVhrZCmKwZveuXKQR3r6B0Y64wAAqpAJ8UE5AaEewpJZzv4XiA3HaeI5cVMNhjUhafDbOHx/+hoY7HhLH6uOwfb0WBw8TEYmpFYhA9BS1lQlYjFOXsMYellXEL3ORWKnK5BVMk1nwNCrvMtSbOCyDelWlo7H5shYUx4Z+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH7PR11MB6330.namprd11.prod.outlook.com (2603:10b6:510:1fe::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Thu, 28 Mar
 2024 13:09:37 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 13:09:37 +0000
Date: Thu, 28 Mar 2024 08:09:33 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Jonathan Cavitt <jonathan.cavitt@intel.com>
Subject: Re: [PATCH i-g-t] lib/kunit: Read results from debugfs
Message-ID: <kcd7mkgkxuemwv5zgihvofmlrmyrhkyauqwzgd3ijtx3ntmmis@6qxhiky4c2a2>
References: <20240327113700.7123-2-janusz.krzysztofik@linux.intel.com>
 <leokqgcgm67t54fvdv4od2z3wbhef6r6ejygn7wklpmzykk5ks@tp2xec36zeg4>
 <2598806.Lt9SDvczpP@jkrzyszt-mobl2.ger.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <2598806.Lt9SDvczpP@jkrzyszt-mobl2.ger.corp.intel.com>
X-ClientProxiedBy: BYAPR05CA0025.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::38) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH7PR11MB6330:EE_
X-MS-Office365-Filtering-Correlation-Id: 76c9d0b4-9847-4adb-1248-08dc4f285219
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xEpXxx/sBjJHuprLxSBIDnYeWi85zP+iSgo+hZ7h9OJNLKQsDCVxAhK279WARWDrx90Bnob3YpbTNEeMts2AwIPsSGUyT63/EibExyke4GnbKFaKK+HmwCHn0vujaGs5uVbC4KLGIlTfWM3dWlxnmGLiikQUECGnTjXiImFCt763W8h+0QhiAwpgrhL4PSM8wNEWWX946Yq50QYAkgc3Za3cuKgVDkL8yd16nvqPAq6Pcu+JQJWUkRnG1nIIBW65bbGmq0GWK6ICVczssnozkOp4k8f55qfNy7BVWQu0vPntpXThLGBp+ke10FvFxjb5alsi/IqM0ndybKzeejRsXdj/6XuokvSgpGLGeXxnZFNgMfl0yf4FSAjR04esMdrwfSN00NT8T9CA4HUy22NAgZ12Ge9th/NYJ3GD752qe6855ZIr1V+QVBGSdC2TJfMDTODQdholV6u0C/QeJPTxcR31/wYqcAvfYmTux99T3/gp8eO/wvG6PIJb84n2n+i/vGSUOhDXgEQ+NHGI9clAATMx+Jnkf1ddCu2vIaAyrj7vSnysdrTEicW/UQP4psSmJo/GyOUB2bKs//Gy9I2urbiWhYXx6d0HAJxMDLQppEwO7qq3ZfjUUvbVXJSs7Bu8mIu6wGh4s34sorx5VFLVdfqpf0Fy3lHi0F0eShwLLbw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7BPYztny8Ik/oTvvwz6XMyGhICN+zZU86+2+pl+OnaIcVvvtw0keeajKWCM+?=
 =?us-ascii?Q?4BWpRC5iu5jcBxOZAYtOliw/jZ8xHda14/ueRqe60NnwMv7yOKd9ka8SoB6S?=
 =?us-ascii?Q?u5ZgCT2+8z+dCdfF/Y/JpfChRAmQ2mv7AFUzjcfP5iuVn74VXVXqtYKF6SYL?=
 =?us-ascii?Q?GXrpjOnxweU3x/8r1ePBs73YPubs2D1gYPffSg4CFKzqVWlNX/mgjd7S36jd?=
 =?us-ascii?Q?j4neTX/jPta9l+QePfNQP33NdzB671kqTOMJMWUDLaY0elZbb7448ZP1wQ3/?=
 =?us-ascii?Q?+z5h6Cj7thIxVKQh5Fk/GRqCjhNwid39f1EgT3dGHQ3v8CcT1gNeKDZK562E?=
 =?us-ascii?Q?E2ajWW7yUAr4Xbl1totXQvNB9iZeBXQ5grEaatyZxcYUIJ7A4O+awN2DlEAu?=
 =?us-ascii?Q?FDcQD349SqcZbLImKw03DjBRDR2NoHNTF0QwZWEWFbV4dsREEfr1AWCI++T6?=
 =?us-ascii?Q?6KGFJmPuOCp+KOHuRU1J30UIuNsfR+4Ikm8VL481m//A4Kkwo3FSkDeQqeMX?=
 =?us-ascii?Q?2vT2vHImteO+ErQpIpalUe3COyFWqpOp5d8Mzut9KfZdzOOOh0FC9f6VjA4a?=
 =?us-ascii?Q?PGEiHoDLBJqiOlUKOz5Dd5X3noBzzJqyVo9DtpNye34d6qeBbzOHOMReUHl9?=
 =?us-ascii?Q?gFbxncK4NIBmuYfvgp6NpdZYtwmBmMpDuBmis19HKUXgh4V3y1MW3mXh3L1K?=
 =?us-ascii?Q?pApHuyR3J3P7UHtofutzd/NT7TdSXDaQlcRD//QSZV7unhyE27fY/AtYpuhg?=
 =?us-ascii?Q?Cbemy2NAsVaQ2nxy6M5ObaFjnr13ZCULUpjPpaVYbtez8fwUAXwUzZ/de7Hf?=
 =?us-ascii?Q?8vDQ+1TK3V6saR1+vWU8CWq5OdJZ9+Bh0/sviNabVH7dlCtPkJc+F+HinriG?=
 =?us-ascii?Q?Mwkye78Vrc8ARaqFLn2cXX+ooYu1kTnUuIabnyj7E4hGpGDYK/Gpf0Ma4rm0?=
 =?us-ascii?Q?KjgrKh/0DPzpjzhsq+22CBgrLJiqX9RM/bhEIDsWKUtUlO/Xa0w9ydOyK8NF?=
 =?us-ascii?Q?/rP3tCCjY8tdXAC2SkC4AYD06z5wEmas/fKKufunr6MMb8TNllrm7KPaNbEb?=
 =?us-ascii?Q?Pz7qVl/SR0QEXuA435dv0L929Ht1JEcmpQUD5y00epzDG7WeHP7elW7uWBRk?=
 =?us-ascii?Q?Sz0Qn0FLsUf3P7brvesgNQallE13cbUUH/OkVwzCO7i6x/uMAwvuW2wy8CVJ?=
 =?us-ascii?Q?8ulmOEnU5M7GdEqtIcbXtZGJcn46c5wtQ3iIYm6rTPBssq2tswxZzb5HEI08?=
 =?us-ascii?Q?paJaGOWenduyWLYyaZSbGQSI8f9MQTav5KGciSrEGH+D8IE39MrPKxwD2N3G?=
 =?us-ascii?Q?7uyldX7b5QPNFM99V2YE+30bqIfdgSIF5VY9ESQBmlttuTwo8OSINIkGpYKq?=
 =?us-ascii?Q?mknVeoRHQcSuymo39XAlFZyHt5YKegcisPsXeDoMGGvwqBhpcf9aYwpRrmLC?=
 =?us-ascii?Q?a5ZPAUMfwwAuYYmD5cD1nOv64XBOWPRq5nAkB0T2qdogPpanbabGICzZZdBw?=
 =?us-ascii?Q?ACBzEEe9ldHcInVPMLHLaY8TIQ1pRxQ+z3ESe8uQprEYhhEFqG6WyQWz4Wey?=
 =?us-ascii?Q?JKT5RWYc5YzTtJbOsLaG87I6UgLxd6MeyY4FgowCXTl3xjzafLcc0bNqMl90?=
 =?us-ascii?Q?ag=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76c9d0b4-9847-4adb-1248-08dc4f285219
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2024 13:09:37.6135 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CXRd0GnA+LcsT8RIWAj6amTXULMXjLugRjKcsjzsmiJlbxHWW4iO5aC2zo67l60o4IZQmSc4qVbdyqu54veFG9q9TO5sVcV1isUEj9m/YAw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6330
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

On Wed, Mar 27, 2024 at 10:54:53PM +0100, Janusz Krzysztofik wrote:
>> >+static DIR *kunit_debugfs_open(void)
>> >+{
>> >+	const char *debugfs_path = igt_debugfs_mount();
>> >+	int debugfs_fd, kunit_fd;
>> >+	DIR *kunit_dir;
>> >+
>> >+	if (igt_debug_on(!debugfs_path))
>> >+		return NULL;
>> >+
>> >+	debugfs_fd = open(debugfs_path, O_DIRECTORY);
>> >+	if (igt_debug_on(debugfs_fd < 0))
>> >+		return NULL;
>> >+
>> >+	kunit_fd = openat(debugfs_fd, "kunit", O_DIRECTORY);
>> >+	close(debugfs_fd);
>> >+	if (igt_debug_on(kunit_fd < 0))
>> >+		return NULL;
>> >+
>> >+	kunit_dir = fdopendir(kunit_fd);
>> >+	if (igt_debug_on(!kunit_dir))
>> >+		close(kunit_fd);
>> >+
>> >+	return kunit_dir;
>>
>>
>> any reason not to use strcat() + return fopen()
>
>To me the code looked simpler than if I copied and concatenated strings to a
>local buffer of fixed size with potential truncation handling.  I guess
>you prefer your pattern over mine, but you haven't explained why.  Would you
>like to convince me?

not really important. It just seems simpler to me, with no calls into
the kernel... completely untested, but something like:

	const char *debugfs_path = igt_debugfs_mount();
	char path[PATH_MAX];

	if (igt_debug_on(!debugfs_path || (strlen(debugfs_path) + strlen("/kunit") >= PATH_MAX)))
		return NULL;

	strcat(stpcpy(path, debugfs_path), "/kunit");

	return opendir(path);

Lucas De Marchi
