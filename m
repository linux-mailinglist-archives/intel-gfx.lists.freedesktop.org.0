Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B9C46F7BC
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 00:56:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D62E610E14E;
	Thu,  9 Dec 2021 23:56:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D9D10E14D
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 23:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639094174; x=1670630174;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=i4Q3NfpkkmpYgn43xI2iNl76bV38OtlMzqiZL9bWJCc=;
 b=WXCa+KouqWREYwVqOMXGxxXC1QRMPuPJbf0oU3oRJQnWMOpalQWgVwWO
 mPm7iv6GwgPnQrDURV/q6ErrdNJCrmw1mwzjUXSp3OOAdRHhmdevV9DVY
 kPdmWcPmEadrjhhRqEFqGbMoo8Iv4WbrqXY1++fhGaZWyac6vnL7EsWFV
 5F1+yB1zv+kF5OsJkLTUUuCa+h5fjvBhNsHxUYgYR/ws9oUA2UxDNGCYt
 z7p6GkGXlvlVYwrrPlVwzmfhs4qdV4tyNckDbrwiTMrpPEn7ctlrfmj5n
 kTn0owj5caZIDxQ0/U86mODFui6lWsf8kFFZUpIkS2GBpo1++Qif/JrKq w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="218921384"
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; 
 d="scan'208,217";a="218921384"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 15:56:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; 
 d="scan'208,217";a="516975099"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 09 Dec 2021 15:56:14 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 9 Dec 2021 15:56:13 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 9 Dec 2021 15:56:13 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 9 Dec 2021 15:56:13 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 9 Dec 2021 15:56:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LS5BCJQyITwFJHhfkliP+iD4YA765pKGThdRYeGg6TodbpfV3FAoi5mESJOA3VN9TQtG1xlCg+qls2QB2XeAoRziO4PGxZSVR0nwVOqM1BQMPQIIdr49HVZyudx26ESje5TicU18J5FYRn7bzT75aC7Hbn4Nuv+5lk4swhbre6AXUBM+QTUn5iBKQMADIF5hTIxAVaImbs6lLnQTeflgKaMkplgjJCIh3eekmKj7FC4QthkLBKlVKWQ162nJi0ALvFTapCC3Bj1ij/bcPy55T+RLMOCkXG+oa/KgwzM9oNNa7o8HLNKOOCZ4iqgPkRVUqVaEUoS3O5OvB/FMqDdGMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eJkZKLCfmV4WaPmJAs6qwqFoMWHP4vEhUbWUhvW1Xpo=;
 b=hgW2ZmxACQ3KBJtsQsFHRgpJ+EHu3aqIcIg/uSkyntJnJBdANqT8t25ZcBwHSppEMH2wSJprLGBvCXoOWH883xPzxqIXDcc64XylL3cJoEDPg1vswnK5Ws1Zo+SBgIiFuO+7n+2h+kNteAzxFsgst+xTI5ONIBZUo9fhUMfPJmIan2G+mAekaULd4lAyKlcSWDRfNlJnNz5YoAoByTJjoSCuBvt4eSw/JoX3fblG2uLhswvX+d0X7+UTCW4bjomBqPd1T8scQNkcSYiWL1u3vu2RdTB7enRge22GQUsZVrjaZU/Xmedqb3+r42Ih1q9GbTLJFUX9k4O9D1QZCjXJTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eJkZKLCfmV4WaPmJAs6qwqFoMWHP4vEhUbWUhvW1Xpo=;
 b=IrkFLlejLsdNnZHTbnGatOu5X0cjaF4rlTzOOYXIj06f0JF2CVHJY9RHbh4D9303X/2lItwrI4ULTUfyP/Z6rl+EX6+0JTsNcQDnk2mC/G4CUm28oPyTVZ/rbhFaGf1jC0CgfiITdZx6amdWrq//Ns+71p0KJ7Duj555f87YPVg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 by PH0PR11MB5641.namprd11.prod.outlook.com (2603:10b6:510:d6::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.14; Thu, 9 Dec
 2021 23:56:08 +0000
Received: from PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::d8b9:b1c1:dd29:82e7]) by PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::d8b9:b1c1:dd29:82e7%8]) with mapi id 15.20.4755.021; Thu, 9 Dec 2021
 23:56:08 +0000
Content-Type: multipart/alternative;
 boundary="------------XRaXpCXHI0sb2GOwBVn2EYAY"
Message-ID: <0f9570c3-46e4-dcc4-aa79-7f94269315dd@intel.com>
Date: Thu, 9 Dec 2021 15:56:03 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.3.2
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20211207201932.240050-1-John.C.Harrison@Intel.com>
 <163902263973.5091.10701641939888448332@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <163902263973.5091.10701641939888448332@emeril.freedesktop.org>
X-ClientProxiedBy: MWHPR18CA0030.namprd18.prod.outlook.com
 (2603:10b6:320:31::16) To PH0PR11MB5642.namprd11.prod.outlook.com
 (2603:10b6:510:e5::13)
MIME-Version: 1.0
Received: from [192.168.1.106] (73.157.192.58) by
 MWHPR18CA0030.namprd18.prod.outlook.com (2603:10b6:320:31::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Thu, 9 Dec 2021 23:56:07 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 76c092bd-f223-4173-76d8-08d9bb6f779d
X-MS-TrafficTypeDiagnostic: PH0PR11MB5641:EE_
X-Microsoft-Antispam-PRVS: <PH0PR11MB564166870BB6CE60CCB1F19DBD709@PH0PR11MB5641.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7uYdH/UQS8Cb7ttJVXDeyXgvCS12UaLRc90OS+Ayq7PH2iUTgkZDSL1tTjDXIfhZKkX+PrGxX6usZ9ZAvCHs05LggAQTYFOMmuNw32F3iDNNaoTGG0BwuKy8gzzmOglcoHY7mA3UdVqWSy68xVADw3w1avoGXz8uhLElMN2inOkUJs8cec156pcIS01kdsPRZ7nrXnYpQn8hAZUv/a8i8vlLnQG3aucfMTMvuHLo1WrWXhd2Lsq8Jtayu0Zem7qag3+ZIBYGJxft0Me1eEll4L0QdO01VgFtUorTuekhN5k8JLmWVBTA4vsfXtmlrhY52Xanl6MYK3ddL3twKADMRlQlZFlOKtDCAeVujl4P2j8PRfCETgPNwidnO+iyzgQmUQxcqoXAB8cNxA8vNypOj1RFnmgXSzeNrpjTHuOkILawNS4F9oqt9JRpGw9jZlXZ2SdUTS/2WcQvVpJrDCabBqNyTuQYnZLK3t+q+0uRy2wLxzizj+Etcc9D1lM79pmtaLAyTYiO0wQCQB8J6UGzizRfFuSOoJApPhiL7XlyXEgMLRdVZG3zB0gw0FNKFtCpxLbqx8jCwkq9jHANd/ajqwQvG8IGvwep/JExDHq2LxHVqP4X7bqrLdp3JRPFmvCMq/X2vszL3h9M517ZhU7Q2xPZ+5NoxWVZJaakVb7OYZ4rt7jDFh7OaMUSiJyHRlTOCXW/+x2ucRDXTz8DkEv6rLeNbg07sptrgHjlfDbiVEKLtWnjpBF6NwadtBXvpUO5J77znaTx8fgVRewekKucwy6ND149zzhu6huu3qmtLvMG7RP5nXF9u/TmGMQ5AW8CuwJSIyLk7tMIys5tIpx9F3iiNtDZ2p0y4rgBt627tplIakF6kKqJYijSIjRyQSHX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5642.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(966005)(40265005)(956004)(66556008)(166002)(31696002)(2616005)(53546011)(8936002)(66946007)(5660300002)(31686004)(186003)(86362001)(21615005)(36756003)(26005)(33964004)(508600001)(66476007)(6486002)(6916009)(16576012)(83380400001)(38100700002)(2906002)(82960400001)(316002)(30864003)(6666004)(13750500001)(45980500001)(43740500002)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NnFzWUNBUDRLUWpGbkgwR2s1cmVZcnd3bUxPenprOWRIK1JyZlpMZFJkRndt?=
 =?utf-8?B?blFOWjYrUi9CSjA1VWMyajUxZ3AvajVUdDNOMW5BYXhlWWRmTHJlcW1UMlhr?=
 =?utf-8?B?QTFQbVlDUlUwZjdEZ0l1ZzJzNnZ6OUlkMk1XSDdydVd2czZZbWJDdFhZeGNp?=
 =?utf-8?B?U3dzUGQwajR4SFVvSFpDSS9kOXJtU3ZadTV3MVhwRTJmeHdqTC9FZm85cmhJ?=
 =?utf-8?B?M1JqMk9QNm1MUmp1K2JBeEZub3prTlpHKzRVT3J0Y2xJRVNnUk1pVUMvaFdi?=
 =?utf-8?B?T1NlYlRQYUlwWk5LaTBSc2U0aVphYnowT21qQWtlQjgwNkNTUXpRWUR0Q0Fm?=
 =?utf-8?B?Z1A2RHBCZVNDaXc5VjZUYk9YTEk0Q3NTWEV6NTl1a0dEeFA2S1JmKzZDNkpV?=
 =?utf-8?B?QTZpMFRVTjFWTkJmR2lCdjdDN1JhcDdNbGYyVGRHU3JZaGU5Tmo5c254STZP?=
 =?utf-8?B?NndoYTdUQ1hscHh0cngvRWVSQVY2QzF4bkdZK3IvK1FZWklIS2xoRldDajBh?=
 =?utf-8?B?Vml1QmZBYzcyWDlRdyswS0l3NllNelNzZzdLMHZ0NXMwS3FYQ1ZIclQrRkRi?=
 =?utf-8?B?ekRQUlIzVDlieFZNRUVPV0J1UUVDajNGK3ZDUlg0TzF3NHBuVkEwVXo5QzFE?=
 =?utf-8?B?ajNKWml2RzVqd3FrOUdwemtDZXBQTG1OelU1M1FOcE41blRsdUp3TlhCOHlR?=
 =?utf-8?B?N3o1L1FmWFdLL3BNVHNHV0lZVUF1U2xoMHBDU1hwY2l1Y0xobDBBSmd3aWU4?=
 =?utf-8?B?djBsNzNyUGszcTBVM1E0N3BZSVhiTlZjS2poVFNBN2xvMEViS3g4ZFlaMWVV?=
 =?utf-8?B?NHpCSHRjMDR1clB5STR3S3dKaHBmZ2dEdGZVQW5CVTlXTG1FSjNVSzk0N2VN?=
 =?utf-8?B?eDFmblB4N2FRYTBndkNCZ3dkemZYc2RuemN6VjVJVHc0SXVBYStLbUZKRXJu?=
 =?utf-8?B?YkVROWVwa1labExETmxSSEdYeG55ZG0zMjRPMzZVelJDRG5TU1hXK0E3VG5w?=
 =?utf-8?B?QitzbnJneGVSSjQvMWplc2xGbjBhNDBGa0t3WVRtWDFrSitBdjYzSW5CN1BJ?=
 =?utf-8?B?SXJmKzk5MFZCRCtEUVRQM2p2VkJhVXhQS0ptQ1RPWWdwc21STVVaWGJranRh?=
 =?utf-8?B?UzA1dExmcUtYUUQyQ2VTU3hnZFZCWDVieURLOEF6cXV3dGNjd0Q5bmxMNmsv?=
 =?utf-8?B?cHJBeVNPUjZPQmFiUzlocCtIVFViaTBHaTdxTnRZKzhnbWljOHNZa3VDcFpZ?=
 =?utf-8?B?bmJPWXBuV1VaTklvQll2RXFSNjB0dllmVEV3WlZGalNnRE1WUVRXbis5c0t2?=
 =?utf-8?B?cTAzdkxGUGRJWmg5Y1NKUmNuenBaQ1Y4YWx2SFFRb2NhWVRhdzVmQ1AyK1JR?=
 =?utf-8?B?T21XZktpS1QrbG1ROC9MdXo4SFdscCt6LzdjQSsvRmVTR0lsOXBmQ2paWjZW?=
 =?utf-8?B?Q1BQbGFkaG1pbzdtSmwxNHRTV2xkUVVMcFlLTjlmbGs5U2dvOEh5bVlsdjhU?=
 =?utf-8?B?c1NMMGR5TXQwMlZTY21xSks5b3JwT0p6dGNhbFJobkF2YVBJRHcyZWUyZVdO?=
 =?utf-8?B?eW9zVzBVVUw1TGduNk5oRTI1ZWVJRTlqcGtkOWE5N2ZydW5DS0Y2bkx0TUR3?=
 =?utf-8?B?bzdKWkpnVE0wWWQvaWw1ZE5LSlRiWG1EOHZBREN0NDJYOUZmcVpLRzFkK3J6?=
 =?utf-8?B?SjJpbHFyMlFOQk5wbDRrY0dYdDkzZzd2UkJheHNCZEZsbzNUV2hNazkvOVNQ?=
 =?utf-8?B?aDZoSW93VW9mVjhPa2hxRWR0dGVEM0FXazc4Q3ZjckNPRFkyM1ZQR2QvM0NX?=
 =?utf-8?B?aFhCSUhuNmtYVWlMU2dqOCtoMGhFeWtqNkhmaU5IcFZkM29DK2pnd0Z5MzZZ?=
 =?utf-8?B?ZVVYdUswZmUrb0l6RG9vblN1cmhxdGFaWFdZNGUrMEVuem1mYnJESjhZRWJC?=
 =?utf-8?B?UjZ3RmxVclRROXdFaU9ZU0dxTVl4NmF2S0NueGFQZ1U3MG9xeWprdVYrcWJQ?=
 =?utf-8?B?RE5aSWNPRmpjdU5wTE4xdCs0OGZHOHV0aW01ZHhGRDZ3UXUwdVpSVFFLWDdU?=
 =?utf-8?B?OEhZUWJCdVdJU25BWjFEL2dSNkJ1a0cyVUNCR1RENGJMQlFveWRlS0pselZm?=
 =?utf-8?B?Y0pEUTZOYklYcWxWVG9oK25ldVFQczltaEJCOWh5OGE1bVBRQXhWTjM2ZUI3?=
 =?utf-8?B?U1NVNUREMmhEdkRJQXorVE5OVDVZWnpyeTdJakhQbFhJeGZpcFU5L1ZmUjA3?=
 =?utf-8?Q?0l/NJD4nkoG+I57S+pjbJ4cijmEFyAiZLxBLjZ5TlM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76c092bd-f223-4173-76d8-08d9bb6f779d
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5642.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2021 23:56:08.4553 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yMkXD4VFqoWBXrNUhjPpImQmshHXkoVx6YtWI8VUVtL9fIYok5hbJhcOSbV81ytPCq02xWLyVVlZLYApwVo2RtCqXklCEHRqNyR4x01bDBE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5641
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQXNz?=
 =?utf-8?q?orted_fixes/tweaks_to_GuC_support_=28rev5=29?=
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

--------------XRaXpCXHI0sb2GOwBVn2EYAY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/8/2021 20:03, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Assorted fixes/tweaks to GuC support (rev5)
> *URL:* 	https://patchwork.freedesktop.org/series/97514/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/index.html
>
>
>   CI Bug Log - changes from CI_DRM_10975_full -> Patchwork_21793_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_21793_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21793_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (9 -> 9)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_21793_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>
This is an unrelated failure.

The warning is:
<4> [46.801805] unchecked MSR access error: RDMSR from 0x1b0 at rIP: 
0xffffffff8103a32f (intel_epb_restore+0xf/0x90)

Not sure what that means but it is on a SNB device when running a KMS 
cursor test. SNB does not use GuC and the patches in this series only 
affect GuC platforms and don't actually have any functional change anyway.

John.


>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_21793_full that come from 
> known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_eio@in-flight-contexts-immediate:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-iclb8/igt@gem_eio@in-flight-contexts-immediate.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-iclb3/igt@gem_eio@in-flight-contexts-immediate.html>
>         ([i915#3070])
>  *
>
>     igt@gem_eio@unwedge-stress:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-tglb1/igt@gem_eio@unwedge-stress.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb8/igt@gem_eio@unwedge-stress.html>
>         ([i915#3063] / [i915#3648])
>  *
>
>     igt@gem_exec_balancer@parallel-keep-submit-fence:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html>
>         ([i915#4525])
>  *
>
>     igt@gem_exec_capture@pi@rcs0:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-skl5/igt@gem_exec_capture@pi@rcs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl8/igt@gem_exec_capture@pi@rcs0.html>
>         ([i915#4547])
>  *
>
>     igt@gem_exec_fair@basic-deadline:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@gem_exec_fair@basic-deadline.html>
>         ([i915#2846])
>  *
>
>     igt@gem_exec_fair@basic-none-share@rcs0:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         ([i915#2842])
>  *
>
>     igt@gem_exec_fair@basic-none-solo@rcs0:
>
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         ([i915#2842])
>  *
>
>     igt@gem_exec_whisper@basic-queues:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-glk5/igt@gem_exec_whisper@basic-queues.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-glk4/igt@gem_exec_whisper@basic-queues.html>
>         ([i915#118]) +1 similar issue
>  *
>
>     igt@gem_lmem_swapping@heavy-verify-random:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@gem_lmem_swapping@heavy-verify-random.html>
>         ([i915#4613])
>  *
>
>     igt@gem_lmem_swapping@parallel-random-verify:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-apl8/igt@gem_lmem_swapping@parallel-random-verify.html>
>         ([fdo#109271] / [i915#4613])
>  *
>
>     igt@gem_lmem_swapping@random:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@gem_lmem_swapping@random.html>
>         ([fdo#109271] / [i915#4613]) +2 similar issues
>  *
>
>     igt@gem_lmem_swapping@verify-random:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl3/igt@gem_lmem_swapping@verify-random.html>
>         ([fdo#109271] / [i915#4613])
>  *
>
>     igt@gem_pwrite@basic-exhaustion:
>
>       o shard-skl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@gem_pwrite@basic-exhaustion.html>
>         ([i915#2658])
>  *
>
>     igt@gem_userptr_blits@create-destroy-unsync:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@gem_userptr_blits@create-destroy-unsync.html>
>         ([i915#3297]) +2 similar issues
>  *
>
>     igt@gem_workarounds@suspend-resume-fd:
>
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html>
>         ([i915#180])
>  *
>
>     igt@gen9_exec_parse@batch-invalid-length:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-snb7/igt@gen9_exec_parse@batch-invalid-length.html>
>         ([fdo#109271]) +43 similar issues
>  *
>
>     igt@gen9_exec_parse@bb-start-far:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@gen9_exec_parse@bb-start-far.html>
>         ([i915#2856])
>  *
>
>     igt@i915_pm_dc@dc6-dpms:
>
>       o shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html>
>         ([i915#454])
>  *
>
>     igt@i915_pm_rpm@modeset-pc8-residency-stress:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html>
>         ([fdo#109506] / [i915#2411])
>  *
>
>     igt@i915_suspend@sysfs-reader:
>
>      o
>
>         shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-apl2/igt@i915_suspend@sysfs-reader.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-apl4/igt@i915_suspend@sysfs-reader.html>
>         ([i915#180]) +3 similar issues
>
>      o
>
>         shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-kbl2/igt@i915_suspend@sysfs-reader.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl1/igt@i915_suspend@sysfs-reader.html>
>         ([i915#180]) +1 similar issue
>
>  *
>
>     igt@kms_async_flips@alternate-sync-async-flip:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html>
>         ([i915#2521])
>  *
>
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html>
>         ([i915#3743]) +2 similar issues
>  *
>
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html>
>         ([fdo#109271] / [i915#3777]) +2 similar issues
>  *
>
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html>
>         ([i915#3763])
>  *
>
>     igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html>
>         ([fdo#111615]) +2 similar issues
>  *
>
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777]) +2 similar issues
>  *
>
>     igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-apl8/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +2 similar issues
>  *
>
>     igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl2/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +7 similar issues
>  *
>
>     igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html>
>         ([i915#3689] / [i915#3886])
>  *
>
>     igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +11 similar issues
>  *
>
>     igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs.html>
>         ([fdo#111615] / [i915#3689])
>  *
>
>     igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs.html>
>         ([i915#3689]) +3 similar issues
>  *
>
>     igt@kms_chamelium@dp-hpd-storm-disable:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@kms_chamelium@dp-hpd-storm-disable.html>
>         ([fdo#109284] / [fdo#111827]) +2 similar issues
>  *
>
>     igt@kms_chamelium@hdmi-mode-timings:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl2/igt@kms_chamelium@hdmi-mode-timings.html>
>         ([fdo#109271] / [fdo#111827]) +10 similar issues
>  *
>
>     igt@kms_color_chamelium@pipe-a-ctm-0-25:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-snb7/igt@kms_color_chamelium@pipe-a-ctm-0-25.html>
>         ([fdo#109271] / [fdo#111827])
>  *
>
>     igt@kms_color_chamelium@pipe-b-ctm-0-25:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-apl8/igt@kms_color_chamelium@pipe-b-ctm-0-25.html>
>         ([fdo#109271] / [fdo#111827]) +1 similar issue
>  *
>
>     igt@kms_color_chamelium@pipe-d-degamma:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl1/igt@kms_color_chamelium@pipe-d-degamma.html>
>         ([fdo#109271] / [fdo#111827]) +21 similar issues
>  *
>
>     igt@kms_content_protection@lic:
>
>       o shard-kbl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl1/igt@kms_content_protection@lic.html>
>         ([i915#1319])
>  *
>
>     igt@kms_content_protection@srm:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_content_protection@srm.html>
>         ([fdo#111828])
>  *
>
>     igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding.html>
>         ([fdo#109279] / [i915#3359])
>  *
>
>     igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html>
>         ([fdo#109271]) +280 similar issues
>  *
>
>     igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding.html>
>         ([i915#3319])
>  *
>
>     igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html>
>         ([i915#3359]) +3 similar issues
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html>
>         ([i915#4103])
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         ([i915#2346])
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         ([i915#2346] / [i915#533])
>  *
>
>     igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html>
>         ([i915#79])
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank@b-edp1:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html>
>         ([i915#79])
>  *
>
>     igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html>
>         ([i915#198])
>  *
>
>     igt@kms_flip@plain-flip-fb-recreate@c-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html>
>         ([i915#2122])
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html>
>         ([i915#2587])
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html>
>         ([fdo#109271] / [i915#2672])
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html>
>         ([fdo#109271]) +162 similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt.html>
>         ([fdo#111825]) +22 similar issues
>  *
>
>     igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html>
>         ([i915#1839])
>  *
>
>     igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html>
>         ([fdo#109271] / [i915#533]) +2 similar issues
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html>
>         ([i915#265])
>  *
>
>     igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>         ([i915#265])
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html>
>         ([fdo#108145] / [i915#265]) +1 similar issue
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html>
>         ([fdo#108145] / [i915#265]) +1 similar issue
>  *
>
>     igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl2/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html>
>         ([fdo#109271] / [i915#2733])
>  *
>
>     igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html>
>         ([i915#2920])
>  *
>
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html>
>         ([fdo#109271] / [i915#658]) +6 similar issues
>  *
>
>     igt@kms_psr2_sf@plane-move-sf-dmg-area-1:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html>
>         ([fdo#109271] / [i915#658]) +3 similar issues
>  *
>
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-apl8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html>
>         ([fdo#109271] / [i915#658])
>  *
>
>     igt@kms_psr@psr2_dpms:
>
>       o shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_psr@psr2_dpms.html>
>         ([i915#132] / [i915#3467]) +1 similar issue
>  *
>
>     igt@kms_psr@psr2_sprite_mmap_gtt:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html>
>         ([fdo#109441])
>  *
>
>     igt@kms_rotation_crc@bad-tiling:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-skl10/igt@kms_rotation_crc@bad-tiling.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl6/igt@kms_rotation_crc@bad-tiling.html>
>         ([i915#1982])
>  *
>
>     igt@kms_selftest@all@check_plane_state:
>
>       o shard-apl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-apl6/igt@kms_selftest@all@check_plane_state.html>
>         ([i915#4663])
>  *
>
>     igt@kms_sysfs_edid_timing:
>
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl1/igt@kms_sysfs_edid_timing.html>
>         ([IGT#2])
>  *
>
>     igt@kms_writeback@writeback-check-output:
>
>      o
>
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl1/igt@kms_writeback@writeback-check-output.html>
>         ([fdo#109271] / [i915#2437])
>
>      o
>
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_writeback@writeback-check-output.html>
>         ([i915#2437])
>
>  *
>
>     igt@nouveau_crc@pipe-d-source-outp-inactive:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@nouveau_crc@pipe-d-source-outp-inactive.html>
>         ([i915#2530])
>  *
>
>     igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-apl8/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html>
>         ([fdo#109271]) +38 similar issues
>  *
>
>     igt@sysfs_clients@fair-3:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl6/igt@sysfs_clients@fair-3.html>
>         ([fdo#109271] / [i915#2994]) +4 similar issues
>  *
>
>     igt@sysfs_clients@sema-25:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl6/igt@sysfs_clients@sema-25.html>
>         ([fdo#109271] / [i915#2994]) +4 similar issues
>  *
>
>     igt@sysfs_clients@split-10:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@sysfs_clients@split-10.html>
>         ([i915#2994])
>  *
>
>     igt@sysfs_clients@split-50:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-apl8/igt@sysfs_clients@split-50.html>
>         ([fdo#109271] / [i915#2994])
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_exec_fair@basic-none-rrul@rcs0:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-throttle@rcs0:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         ([i915#2849]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html>
>  *
>
>     igt@gem_workarounds@suspend-resume-context:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-apl2/igt@gem_workarounds@suspend-resume-context.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-apl8/igt@gem_workarounds@suspend-resume-context.html>
>         +2 similar issues
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>       o shard-snb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-snb2/igt@i915_selftest@live@hangcheck.html>
>         ([i915#3921]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-snb7/igt@i915_selftest@live@hangcheck.html>
>  *
>
>     igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>
>       o shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html>
>         ([i915#118]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html>
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         ([i915#2346]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-iclb4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html>
>         ([i915#2346]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html>
>  *
>
>     igt@kms_fbcon_fbt@fbc-suspend:
>
>       o shard-kbl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html>
>         ([i915#180] / [i915#636]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html>
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html>
>         ([i915#79]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html>
>  *
>
>     igt@kms_flip@plain-flip-fb-recreate@a-edp1:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html>
>         ([i915#2122]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html>
>  *
>
>     igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
>
>       o shard-tglb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-tglb6/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html>
>  *
>
>     igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html>
>         +4 similar issues
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html>
>         ([fdo#108145] / [i915#265]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html>
>  *
>
>     igt@kms_psr@psr2_sprite_blt:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html>
>         ([fdo#109441]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html>
>         +1 similar issue
>  *
>
>     igt@kms_sequence@get-forked-busy:
>
>       o shard-snb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-snb2/igt@kms_sequence@get-forked-busy.html>
>         ([fdo#109271]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-snb2/igt@kms_sequence@get-forked-busy.html>
>         +1 similar issue
>  *
>
>     igt@kms_setmode@basic:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-glk3/igt@kms_setmode@basic.html>
>         ([i915#31]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-glk7/igt@kms_setmode@basic.html>
>  *
>
>     igt@kms_vblank@pipe-a-ts-continuation-suspend:
>
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>         ([i915#180] / [i915#295]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>  *
>
>     igt@perf@polling-small-buf:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-skl7/igt@perf@polling-small-buf.html>
>         ([i915#1722]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl6/igt@perf@polling-small-buf.html>
>
>
>         Warnings
>
>  *
>
>     igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html>
>         ([i915#658]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html>
>         ([i915#2920])
>  *
>
>     igt@kms_psr2_su@frontbuffer-xrgb8888:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-iclb2/igt@kms_psr2_s>
>         ([i915#4688]) -> [SKIP][134] ([i915#658])
>

--------------XRaXpCXHI0sb2GOwBVn2EYAY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    On 12/8/2021 20:03, Patchwork wrote:<br>
    <blockquote type="cite" cite="mid:163902263973.5091.10701641939888448332@emeril.freedesktop.org">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Assorted fixes/tweaks to GuC support (rev5)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/97514/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/97514/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_10975_full -&gt;
        Patchwork_21793_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_21793_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_21793_full, please notify your bug team
        to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (9 -&gt; 9)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_21793_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@kms_cursor_crc@pipe-a-cursor-suspend:
          <ul>
            <li>shard-snb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html" moz-do-not-send="true">DMESG-WARN</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    This is an unrelated failure.<br>
    <br>
    The warning is:<br>
    &lt;4&gt; [46.801805] unchecked MSR access error: RDMSR from 0x1b0
    at rIP: 0xffffffff8103a32f (intel_epb_restore+0xf/0x90)<br>
    <br>
    Not sure what that means but it is on a SNB device when running a
    KMS cursor test. SNB does not use GuC and the patches in this series
    only affect GuC platforms and don't actually have any functional
    change anyway.<br>
    <br>
    John.<br>
    <br>
    <br>
    <blockquote type="cite" cite="mid:163902263973.5091.10701641939888448332@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_21793_full that come
        from known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_eio@in-flight-contexts-immediate:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-iclb8/igt@gem_eio@in-flight-contexts-immediate.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-iclb3/igt@gem_eio@in-flight-contexts-immediate.html" moz-do-not-send="true">TIMEOUT</a> ([i915#3070])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@unwedge-stress:</p>
          <ul>
            <li>shard-tglb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-tglb1/igt@gem_eio@unwedge-stress.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb8/igt@gem_eio@unwedge-stress.html" moz-do-not-send="true">TIMEOUT</a> ([i915#3063] /
              [i915#3648])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html" moz-do-not-send="true">SKIP</a> ([i915#4525])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_capture@pi@rcs0:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-skl5/igt@gem_exec_capture@pi@rcs0.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl8/igt@gem_exec_capture@pi@rcs0.html" moz-do-not-send="true">INCOMPLETE</a> ([i915#4547])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-deadline:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@gem_exec_fair@basic-deadline.html" moz-do-not-send="true">FAIL</a> ([i915#2846])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html" moz-do-not-send="true">FAIL</a> ([i915#2842])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html" moz-do-not-send="true">FAIL</a> ([i915#2842])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_whisper@basic-queues:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-glk5/igt@gem_exec_whisper@basic-queues.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-glk4/igt@gem_exec_whisper@basic-queues.html" moz-do-not-send="true">DMESG-WARN</a> ([i915#118]) +1
              similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@heavy-verify-random:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@gem_lmem_swapping@heavy-verify-random.html" moz-do-not-send="true">SKIP</a> ([i915#4613])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random-verify:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-apl8/igt@gem_lmem_swapping@parallel-random-verify.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#4613])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@random:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@gem_lmem_swapping@random.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#4613]) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@verify-random:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl3/igt@gem_lmem_swapping@verify-random.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#4613])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pwrite@basic-exhaustion:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@gem_pwrite@basic-exhaustion.html" moz-do-not-send="true">WARN</a> ([i915#2658])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@create-destroy-unsync:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@gem_userptr_blits@create-destroy-unsync.html" moz-do-not-send="true">SKIP</a> ([i915#3297]) +2 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_workarounds@suspend-resume-fd:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html" moz-do-not-send="true">DMESG-WARN</a> ([i915#180])</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@batch-invalid-length:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-snb7/igt@gen9_exec_parse@batch-invalid-length.html" moz-do-not-send="true">SKIP</a> ([fdo#109271]) +43
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@bb-start-far:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@gen9_exec_parse@bb-start-far.html" moz-do-not-send="true">SKIP</a> ([i915#2856])</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc6-dpms:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html" moz-do-not-send="true">FAIL</a> ([i915#454])</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html" moz-do-not-send="true">SKIP</a> ([fdo#109506] /
              [i915#2411])</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@sysfs-reader:</p>
          <ul>
            <li>
              <p>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-apl2/igt@i915_suspend@sysfs-reader.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-apl4/igt@i915_suspend@sysfs-reader.html" moz-do-not-send="true">DMESG-WARN</a> ([i915#180]) +3
                similar issues</p>
            </li>
            <li>
              <p>shard-kbl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-kbl2/igt@i915_suspend@sysfs-reader.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl1/igt@i915_suspend@sysfs-reader.html" moz-do-not-send="true">DMESG-WARN</a> ([i915#180]) +1
                similar issue</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@alternate-sync-async-flip:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html" moz-do-not-send="true">FAIL</a> ([i915#2521])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html" moz-do-not-send="true">FAIL</a> ([i915#3743]) +2 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#3777]) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html" moz-do-not-send="true">FAIL</a> ([i915#3763])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html" moz-do-not-send="true">SKIP</a> ([fdo#111615]) +2
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#3777]) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-apl8/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#3886]) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl2/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#3886]) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html" moz-do-not-send="true">SKIP</a> ([i915#3689] /
              [i915#3886])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#3886]) +11 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs.html" moz-do-not-send="true">SKIP</a> ([fdo#111615] /
              [i915#3689])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs.html" moz-do-not-send="true">SKIP</a> ([i915#3689]) +3 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@kms_chamelium@dp-hpd-storm-disable.html" moz-do-not-send="true">SKIP</a> ([fdo#109284] /
              [fdo#111827]) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-mode-timings:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl2/igt@kms_chamelium@hdmi-mode-timings.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [fdo#111827]) +10 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-a-ctm-0-25:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-snb7/igt@kms_color_chamelium@pipe-a-ctm-0-25.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [fdo#111827])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-b-ctm-0-25:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-apl8/igt@kms_color_chamelium@pipe-b-ctm-0-25.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [fdo#111827]) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-d-degamma:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl1/igt@kms_color_chamelium@pipe-d-degamma.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [fdo#111827]) +21 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@lic:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl1/igt@kms_content_protection@lic.html" moz-do-not-send="true">TIMEOUT</a> ([i915#1319])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@srm:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_content_protection@srm.html" moz-do-not-send="true">SKIP</a> ([fdo#111828])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding.html" moz-do-not-send="true">SKIP</a> ([fdo#109279] /
              [i915#3359])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html" moz-do-not-send="true">SKIP</a> ([fdo#109271]) +280
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding.html" moz-do-not-send="true">SKIP</a> ([i915#3319])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html" moz-do-not-send="true">SKIP</a> ([i915#3359]) +3 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html" moz-do-not-send="true">SKIP</a> ([i915#4103])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html" moz-do-not-send="true">FAIL</a> ([i915#2346])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html" moz-do-not-send="true">FAIL</a> ([i915#2346] /
              [i915#533])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html" moz-do-not-send="true">FAIL</a> ([i915#79])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html" moz-do-not-send="true">FAIL</a> ([i915#79])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html" moz-do-not-send="true">INCOMPLETE</a> ([i915#198])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html" moz-do-not-send="true">FAIL</a> ([i915#2122])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html" moz-do-not-send="true">SKIP</a> ([i915#2587])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#2672])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html" moz-do-not-send="true">SKIP</a> ([fdo#109271]) +162
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt.html" moz-do-not-send="true">SKIP</a> ([fdo#111825]) +22
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html" moz-do-not-send="true">SKIP</a> ([i915#1839])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#533]) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html" moz-do-not-send="true">FAIL</a> ([i915#265])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html" moz-do-not-send="true">FAIL</a> ([i915#265])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html" moz-do-not-send="true">FAIL</a> ([fdo#108145] /
              [i915#265]) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html" moz-do-not-send="true">FAIL</a> ([fdo#108145] /
              [i915#265]) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl2/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#2733])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html" moz-do-not-send="true">SKIP</a> ([i915#2920])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#658]) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@plane-move-sf-dmg-area-1:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#658]) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-apl8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#658])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_dpms:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_psr@psr2_dpms.html" moz-do-not-send="true">FAIL</a> ([i915#132] /
              [i915#3467]) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html" moz-do-not-send="true">SKIP</a> ([fdo#109441])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@bad-tiling:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-skl10/igt@kms_rotation_crc@bad-tiling.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl6/igt@kms_rotation_crc@bad-tiling.html" moz-do-not-send="true">DMESG-WARN</a> ([i915#1982])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_selftest@all@check_plane_state:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-apl6/igt@kms_selftest@all@check_plane_state.html" moz-do-not-send="true">INCOMPLETE</a> ([i915#4663])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_sysfs_edid_timing:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl1/igt@kms_sysfs_edid_timing.html" moz-do-not-send="true">FAIL</a> ([IGT#2])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-check-output:</p>
          <ul>
            <li>
              <p>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl1/igt@kms_writeback@writeback-check-output.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
                [i915#2437])</p>
            </li>
            <li>
              <p>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@kms_writeback@writeback-check-output.html" moz-do-not-send="true">SKIP</a> ([i915#2437])</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@nouveau_crc@pipe-d-source-outp-inactive:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@nouveau_crc@pipe-d-source-outp-inactive.html" moz-do-not-send="true">SKIP</a> ([i915#2530])</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-apl8/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html" moz-do-not-send="true">SKIP</a> ([fdo#109271]) +38
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@fair-3:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl6/igt@sysfs_clients@fair-3.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#2994]) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@sema-25:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl6/igt@sysfs_clients@sema-25.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#2994]) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@split-10:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb7/igt@sysfs_clients@split-10.html" moz-do-not-send="true">SKIP</a> ([i915#2994])</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@split-50:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-apl8/igt@sysfs_clients@split-50.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#2994])</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html" moz-do-not-send="true">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html" moz-do-not-send="true">FAIL</a> ([i915#2849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_workarounds@suspend-resume-context:</p>
          <ul>
            <li>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-apl2/igt@gem_workarounds@suspend-resume-context.html" moz-do-not-send="true">DMESG-WARN</a> ([i915#180]) -&gt;
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-apl8/igt@gem_workarounds@suspend-resume-context.html" moz-do-not-send="true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>shard-snb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-snb2/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">INCOMPLETE</a> ([i915#3921])
              -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-snb7/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html" moz-do-not-send="true">DMESG-WARN</a> ([i915#118]) -&gt;
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html" moz-do-not-send="true">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-iclb4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html" moz-do-not-send="true">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_fbcon_fbt@fbc-suspend:</p>
          <ul>
            <li>shard-kbl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html" moz-do-not-send="true">INCOMPLETE</a> ([i915#180] /
              [i915#636]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html" moz-do-not-send="true">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html" moz-do-not-send="true">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
          <ul>
            <li>shard-tglb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-tglb6/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html" moz-do-not-send="true">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-tglb2/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
          <ul>
            <li>shard-kbl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html" moz-do-not-send="true">DMESG-WARN</a> ([i915#180]) -&gt;
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html" moz-do-not-send="true">PASS</a> +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html" moz-do-not-send="true">FAIL</a> ([fdo#108145] /
              [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_sprite_blt:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html" moz-do-not-send="true">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html" moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_sequence@get-forked-busy:</p>
          <ul>
            <li>shard-snb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-snb2/igt@kms_sequence@get-forked-busy.html" moz-do-not-send="true">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-snb2/igt@kms_sequence@get-forked-busy.html" moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_setmode@basic:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-glk3/igt@kms_setmode@basic.html" moz-do-not-send="true">FAIL</a> ([i915#31]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-glk7/igt@kms_setmode@basic.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
          <ul>
            <li>shard-kbl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html" moz-do-not-send="true">DMESG-WARN</a> ([i915#180] /
              [i915#295]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf@polling-small-buf:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-skl7/igt@perf@polling-small-buf.html" moz-do-not-send="true">FAIL</a> ([i915#1722]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-skl6/igt@perf@polling-small-buf.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html" moz-do-not-send="true">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21793/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html" moz-do-not-send="true">SKIP</a> ([i915#2920])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10975/shard-iclb2/igt@kms_psr2_s" moz-do-not-send="true">FAIL</a> ([i915#4688]) -&gt;
              [SKIP][134] ([i915#658])</li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <br>
  </body>
</html>
--------------XRaXpCXHI0sb2GOwBVn2EYAY--
