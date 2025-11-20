Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51034C722FE
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 05:28:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2689A10E292;
	Thu, 20 Nov 2025 04:28:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EIGw0udy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBF3110E0DA;
 Thu, 20 Nov 2025 04:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763612914; x=1795148914;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=XKXHMDef3DthYfFlhqarAEf0+J+aBJB7VC2pE7DPpXw=;
 b=EIGw0udyoCxcWpy/x+ZvpxUvQoAhrGS3dNOKHOufn8sWwojKSWy5LlQq
 PwsrSL7GnfdVftWBgzdO5fdTKYroixv9y53D3n4E55Pns4d2+hudEBEmp
 dhQ2xzHyVwamE3wgeSO0cBbAZrVz+IDhv690+gru4zxSSvIMrR+n6DIsA
 4nUIaL+SbBlOZLIw4Pu4RAGto417LLncgiaaIzxM+RxwhEzIVycsLO4Kh
 uO+clGAYo7lYDg2qO3aulxcMGJDlTtvzkUYT6z6OAkPeF10voPlVCORMW
 vhbf96ZIBFcwo+Vxglw9hjjV8RDKU3F4L0ivAnLjaDERcBPNjvYxBBUbf g==;
X-CSE-ConnectionGUID: mkVz0EFLSRiJMWy0hTJWfQ==
X-CSE-MsgGUID: txDHEkd8TniKJFfvmTe1mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="77134944"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="77134944"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 20:28:33 -0800
X-CSE-ConnectionGUID: mpZXhv5nRt6KQkLe83NB6A==
X-CSE-MsgGUID: Xyzeb0BmTOyRRxEedUrNbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="222180640"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 20:28:33 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 20:28:32 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 19 Nov 2025 20:28:32 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.18) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 20:28:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AcF/QLKCUYxADstEaf0PUnUqJepJp4nzUSkRix6NDoCdgrl9VArpGyviJQlAmh/UzJh+RZAuLtXWPWzGYMEzK11KsM4JsGPlJyTLAQYJ1ZIgSWh3eLxxWdknhRp7Qhsi7ZiSQpT0Sa8/HzW8ofKFBNGmCY9HqM9Sj1/0UWerVpjGtuXOsqjxEJ8ahv9UBN47ZiheLJq1DLSYam3y2VVRjZWuDVH8nsLVd9mMINK5QACFMNmNzwo2SzDVz7MZ/m28nre+AJIThQJ6Ou3Y3k78mnewowtVg0sehpDDQQL/Wg2UPdw8ZW+HQ6YDCxAZPSb4m7ixxls/RNzGErQ4Y5o40Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VjYdC1cYTROTDOEwWYngJ4BVm50hPmieRrNJ4VOQTwk=;
 b=gKndR/EXjT0RYyLTa64MRLhkrO4n/iUORVCoIxMH4eeczx4Gd5CcNi9OleMkajNe9xGo089m4StP1Fz3sC0yxRNtGzyTpbuBlQDJk1eFxEsagMefpakPmbm94cx4kdU0t1erCNCY1L8lS6t0NQzmgHUQR0tFVR9XZ38+zWhNLk+2eGpjwo+Zh1eOoCeNS0XQZ2AEaxT1rnmqlEFB56roRfXfhzNcSN1bVUYE4tSwV3YWdmBvN3QjvHCyGvIBKmNggDnEVpcNq/xXs0Tqxa0Pc/r98hL30bXigWNdQifWMZ+0OK20eqDpnd7ryhwwrB870PdXa/vcOyL9iYvrH31jZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM4PR11MB5247.namprd11.prod.outlook.com (2603:10b6:5:38a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Thu, 20 Nov
 2025 04:28:24 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.9343.009; Thu, 20 Nov 2025
 04:28:23 +0000
Date: Wed, 19 Nov 2025 22:28:20 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Stop touching vga on post enable
Message-ID: <p5nf5oxagtpoil4iv4xdwria22v5kg5lwkuy3hhzpvm5xd6pdc@ggzlv6v2kyvi>
References: <20251119-ioport-v1-1-ec43f1e12c49@intel.com>
 <aR4zAKLW0CZttPfi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aR4zAKLW0CZttPfi@intel.com>
X-ClientProxiedBy: SJ0PR05CA0097.namprd05.prod.outlook.com
 (2603:10b6:a03:334::12) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM4PR11MB5247:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c941f51-c9a4-45da-87cd-08de27ed3ddf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?TUTxbg/+cubbuFI8nV5S/fr++jTalxFKP7Jbv4wElryw1SKtX2c3aReHOn?=
 =?iso-8859-1?Q?kdWRRdWRkS/DjyCA+VXX8+X0wQ4R/3hxrj6J5D20Qb2sk5ZF0cT/DI7kGm?=
 =?iso-8859-1?Q?t+WtgzYs/VQqIf6JNovIH16c/4rKxt9C/USjjSi/8g1pMvshpFn9GKjk7a?=
 =?iso-8859-1?Q?5855p5vb/68ZmZGTNmTs/U0dpe+WdhcIXVJiPExounTDhw68yMYuxhM1Ka?=
 =?iso-8859-1?Q?Og8xnf+p4frf7cHk0hA4x8pYDUS6kCrMdR/a7OsJVTo3Bh0VdlxaKKqEGJ?=
 =?iso-8859-1?Q?50fbXgrQkG4OqwPTKcFghgk8OnVuxDC/ddU8K3G6kwl+fLcz0yQqsMz9JP?=
 =?iso-8859-1?Q?5wUxvOUchZI4c04OsBmz89ZxfvbnPRdAL7eIaUnCn52yT+EvmH5d6enwj0?=
 =?iso-8859-1?Q?WldpJwLbqXiXq0j5g3stOUPyFv8OE2oX5ki7b2BKM7Lg7qmIAdx8KuQN6w?=
 =?iso-8859-1?Q?WcNpcvPGs9bjkd1zCVmoT+1TdkaHUHZ1tVcFVrQfx7Nj1riR59el4z1hMD?=
 =?iso-8859-1?Q?/iJvngbuadMRA+nzsWTjMMzObrOnNiFEWr8nbheEfUwDYqVPnibrxNHPrK?=
 =?iso-8859-1?Q?JiVlVjlcdN3BETStk96mp0IhnZ4q+2KWpIBAIushWvuoNpYLFCLODXBemd?=
 =?iso-8859-1?Q?PF9Ac91UnWRGg8UtWLQ2JvzwBAJC0EjbrMUjWw3xkCSn+NJP8JZ/+JndsT?=
 =?iso-8859-1?Q?WSw6rKB1bQO2XnKW9VcmNQp27u96tu+cuJ0tZ65izg1m7FeWEMaKoVF5M9?=
 =?iso-8859-1?Q?ev9euFnep3NPQtWn8uVA9GiKniJmwOKKlfB5zqWWTW3xtsaUHaD/miscZd?=
 =?iso-8859-1?Q?t1Z0IldfnAP516MhrxPZ1jLxUw2xCXRp/eAhFYe66i9mjRHbU5J5lON5Gp?=
 =?iso-8859-1?Q?HeTpbIv0tGrenIw0vgyzH7i6jyR8HWKzxw060uK0hdqSIOA4PLFB8ioMJT?=
 =?iso-8859-1?Q?2+PfZZs5qzUEgPRqFz1Jtmlf783r9sM4j8Om4WcBoY3bCKw/YlKrGRdoWC?=
 =?iso-8859-1?Q?PnnInccbuE1lPX+Zqz63RBaPxEANNBdgIYbBHAT9qe4QJVlLD10yGXxlQv?=
 =?iso-8859-1?Q?CRgYADzYiy2ohsVTYshG90hf/xXr02qxl3DxLy9ypRH5pxvPGc3Ra4CkAV?=
 =?iso-8859-1?Q?FzKP0JPW2HPHdOCmtfARqQSBSJl/MNHl299Fw2fbD/MPb4SrtPGf9ftCV1?=
 =?iso-8859-1?Q?MuhZgYGVBozaPHK0pBb4ErE8t6CJvrCTiXVkpvYRpmpt/xjzOUuz8Z84Vz?=
 =?iso-8859-1?Q?15oWCwvnq9C2lCDKjfHHgeBJuolgN4I4hjqCuyJGq3fQfAq9GRsH2DKmtT?=
 =?iso-8859-1?Q?pD9bBX1w4l71QgxREw1mUkPViefBvMReqZNrp522RhgWKB05CGbOOarUk1?=
 =?iso-8859-1?Q?75hCpvBucoagXwT40uS8nYON5EjokK2ir0CrwRmtEOn7EOh8r8NyEjG6FV?=
 =?iso-8859-1?Q?pvHS0jFb9S21ek9eQ42Iuqowpj5IQ5w72FwX/vhgKToq6lN2kagsufRGkR?=
 =?iso-8859-1?Q?kFbCA60Hn697HURiQKrZdp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Ke5O/Uvli5mOidmwXJq0P6ybg9u7T+DCXSQqZdqyJ7jZnkmHuiq8IZ+zL8?=
 =?iso-8859-1?Q?suPU9Y6Gjw0yA7HqsgSv0ghL4OS7kVfD+5cUuGCc5uuuf+aGCVmG8rVn82?=
 =?iso-8859-1?Q?flcTmWdhVsQ1v5p5OYybf/lHgod3ohrRFYgjr/gO082LROVu3+qFAnJCNm?=
 =?iso-8859-1?Q?CLQQcWSomPcDFSVu9wvRP1q0ylF29i4YnlGqQm409HrA5tErs9ncab2E+K?=
 =?iso-8859-1?Q?RplFOYpcZUcEAO/R8PGtEO4WbLn0rDSX3NbT7koFoRUYZKK8uIZIPVoZKq?=
 =?iso-8859-1?Q?dUqq+oyE+XzYgpu5gAlDBjy4cpZdaSOf4XCEkl4WZRzY1C28v9vnlxtqu0?=
 =?iso-8859-1?Q?+ifs/qx9k3dt5Uo/fi2YqOrpXbxz2qVQ5b5LWvuaSBvgdKRKnqOsDkBXuG?=
 =?iso-8859-1?Q?6FcNbRKdlHbSnSmLngNok5vPIQDDCYGloQul21HS2hVc4/UUgloodOEPOL?=
 =?iso-8859-1?Q?QLQtPQUgRPSUXzbnVeZpV6z8Dl+qq5vgWMufPSOLpqWgrh6tON+ggd8a7n?=
 =?iso-8859-1?Q?jRBlb1iofC0FSvIpJTmQvc2KzVK9ChJrOPWiqf0Qtnd1Zn75++t5VcCwpt?=
 =?iso-8859-1?Q?fBi+kh3OTnU+7EEoshQMH8otuq2WaHJPLM7KmlvmMzcjGYfKRvcjvWgNG6?=
 =?iso-8859-1?Q?5fu4B6iB9u77mA+57E+jnjI7vjumHqlCY/S4msW8lH8HBEyZROgWJR4DA3?=
 =?iso-8859-1?Q?5sfx84BEIfT74qUaTIismmzvP88MTMg6UdMQ73ccfLyso2dezE86qMasua?=
 =?iso-8859-1?Q?MK0R1aRIFK5ejGKjA8ri4nx9LsNwceqBAij42JcBhcLgg0QvNqxEJKbBoF?=
 =?iso-8859-1?Q?55fJFed2YhRmCJX9oAspbItTh13pxObh4gSpb5Zm037YUrq4Q0pr7WKQ3h?=
 =?iso-8859-1?Q?cZF+p/YfwNwwvTRzXm2xfgG5dpPUMCpr5Ho71mwVQOolbT/z6YORKyKyFQ?=
 =?iso-8859-1?Q?ZXcZYxSluL388bUmpp3E8Z6wfv+iUU8p9uApUCBWOnIJ0wrrL+aX9StCuY?=
 =?iso-8859-1?Q?PEranXngXrJXAn+g76/TTQpE6VgqBlQENYlrrdc7bsHVyS0PxOFWku/U5d?=
 =?iso-8859-1?Q?TQU2yIXV+fqFxvWpivjoMYwsS1mNWyFOEducxVHtb9nVFaGvlco9/fISJ6?=
 =?iso-8859-1?Q?N+g0+fyt1VFO+5Bx667rVvoCHEzvBIDs0tyzFnHI1ig0J5dz5ggn89Pi3U?=
 =?iso-8859-1?Q?rJd6vWn29e1063qOfyCeM5Xq7sqIunTqqjcMUtdzZavn7zSMvbG9Uc+gmk?=
 =?iso-8859-1?Q?8NwuLdFYgX78DYwtwH6cHdH+fXDowMw5EnSsUBRFfngnKQWV0N2DfKJO/x?=
 =?iso-8859-1?Q?wE2EC9t5fzOO46a2oya505WJI4O82/G/F4Tscr+y1Jlhp76OnGWf160TBa?=
 =?iso-8859-1?Q?Pzyp6UbdavIS7N2BdsfFz/l7CpdII9aBD5nUO5FDHUG6rb/IlN4Cfsw5E3?=
 =?iso-8859-1?Q?VyVliGPGVZC5EgaXj7wxv3ORS+u63CZQJxDfekw/DNcxPBWBVnM6OSBHhK?=
 =?iso-8859-1?Q?d0xv8Npi5ZKJp3zzgBPHORmT6Q2/n7Gc5137ChAqLShHe+7PmTDhX5sygi?=
 =?iso-8859-1?Q?/9OtuCh5NgmIqYzzhEBEqbejZUBtFZr99kQohiMQYouNwcY0J7+SBkErzB?=
 =?iso-8859-1?Q?zLysLkfwW4TM320QUUvjLfZIClRB2eF1n60bOeMoSvEtr4TQz/5UPkGw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c941f51-c9a4-45da-87cd-08de27ed3ddf
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 04:28:23.4083 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nVhw/zpZ82SI0TBjPSeZ6oSfemcXvSZ6oe/7q37xbvioHafZr0o0MpSz5xaDdh9Y7Ib9p1pbc4OnUQWvzM8zJQaDUIpNNkUki1zaJHrJE1c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5247
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

On Thu, Nov 20, 2025 at 02:41:22AM +0200, Ville Syrjälä wrote:
>On Wed, Nov 19, 2025 at 12:04:38PM -0800, Lucas De Marchi wrote:
>> Touching VGA_MIS_W goes back to commit f9dcb0dfee98 ("drm/i915: touch
>> VGA MSR after we enable the power well"). That case doesn't seem to be
>> reproduced anymore, even considering that the unclaimed accesses are now
>> printed with debug log level. Also note that the original issue was
>> reproduced with vgacon, but that is not used anymore on x86 when booted
>> with EFI.
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>> WIP to drop the VGA accesses and allow xe driver to be used with
>> non-x86 platforms. There are multiple patches floating around, some
>> disabling code for non-x86, some disabling for !CONFIG_VGA_CONSOLE.
>>
>> For this v1, I think the entire workaround can be removed. Sending it
>> for CI while I look into the other cases.
>
>I think this would need to be tested on a machine that has a
>second VGA card in it to make the the iGPU doesn't end up eating
>the VGA memory accesses when they should be going to the other
>card.
>
>I was perusing the CPU/chipset docs for this a bit, in the hopes
>of finding some sane way to turn off VGA decoding for the iGPU.
>Alas no such luck. According to the docs the iGPU always has the
>highest decode priority, and the accesses won't get forwarded
>to PCIe/DMI/PCI if the iGPU grabs them.
>
>IIRC the docs say that the reset state for the VGA memory decode
>should be "off". But I don't think that's quite true given that
>we had to add this workaround.

confused... What are you are saying seems to be something about
the vga accesses in intel_vga_disable(). 

commit f9dcb0dfee98 ("drm/i915: touch VGA MSR after we enable the power well")
describes it as: 

	- 1 igpu with eDP + HDMI
	- after power well is enabled/disabled, drop the drm, and unbind
	  vtcon (note it's not unbinding the module). Note that it's not
	  about unbinding the module.

And that was caused by our printk from inside the irq handler causing
things to be printed via vgacon and that generating an interrupt that
print something again, creating a loop. I'm not sure what platform that
was about back in 2013, but looking around at the code I suppose it was
Ironlake and in the irq handler calling intel_uncore_check_errors().

12 years later we have a few different things:

	- I don't see us handling intel_uncore_check_errors() the way we
	  were before, inside the irq handler. It seems commit
	  7571494004d8 ("drm/i915: Do one shot unclaimed mmio detection
	  less frequently") moved it out from the irq path (it makes
	  sense not printing to the console from inside the irq handler)
	- vgacon is not really used anymore. If it was only this, we
	  could add a check and do it conditionally, but to me it seems
	  we can completely drop this

Lucas De Marchi

>
>>
>> Get some initial tests running to see if it breaks the world before
>> ICL, particularly before gen7 where unclaimed accesses for non-display-engine
>> registers worked, systems booted without EFI, etc. If this is not an
>> issue anymore, a patch completely dropping the has_vga could follow
>> since this is the only user.
>> ---
>>  .../gpu/drm/i915/display/intel_display_power_well.c   |  3 ---
>>  drivers/gpu/drm/i915/display/intel_vga.c              | 19 -------------------
>>  2 files changed, 22 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> index f4f7e73acc874..01213f7d1c9ef 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> @@ -205,9 +205,6 @@ int intel_power_well_refcount(struct i915_power_well *power_well)
>>  static void hsw_power_well_post_enable(struct intel_display *display,
>>  				       u8 irq_pipe_mask, bool has_vga)
>>  {
>> -	if (has_vga)
>> -		intel_vga_reset_io_mem(display);
>> -
>>  	if (irq_pipe_mask)
>>  		gen8_irq_power_well_post_enable(display, irq_pipe_mask);
>>  }
>> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
>> index 6e125564db34c..97d4c06c2e2fd 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vga.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
>> @@ -76,25 +76,6 @@ void intel_vga_disable(struct intel_display *display)
>>  	intel_de_posting_read(display, vga_reg);
>>  }
>>
>> -void intel_vga_reset_io_mem(struct intel_display *display)
>> -{
>> -	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
>> -
>> -	/*
>> -	 * After we re-enable the power well, if we touch VGA register 0x3d5
>> -	 * we'll get unclaimed register interrupts. This stops after we write
>> -	 * anything to the VGA MSR register. The vgacon module uses this
>> -	 * register all the time, so if we unbind our driver and, as a
>> -	 * consequence, bind vgacon, we'll get stuck in an infinite loop at
>> -	 * console_unlock(). So make here we touch the VGA MSR register, making
>> -	 * sure vgacon can keep working normally without triggering interrupts
>> -	 * and error messages.
>> -	 */
>> -	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
>> -	outb(inb(VGA_MIS_R), VGA_MIS_W);
>> -	vga_put(pdev, VGA_RSRC_LEGACY_IO);
>> -}
>> -
>>  int intel_vga_register(struct intel_display *display)
>>  {
>>
>>
>>
>>
>
>-- 
>Ville Syrjälä
>Intel
