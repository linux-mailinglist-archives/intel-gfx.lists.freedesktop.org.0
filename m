Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E313879E8
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 15:27:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78D336EB7C;
	Tue, 18 May 2021 13:27:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam08on2058.outbound.protection.outlook.com [40.107.101.58])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAC696EB7A;
 Tue, 18 May 2021 13:26:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gYgV/D/DwaWKRiNrBX6vLqGBKpmGVSyrE97H1Sgq5tTJH9X7aDylT0exyED0iUKzIsajC+CU5XbflXZN9qZPBjbKCzaH+kbA8xrW263WUiEUSV/SFX6aPwC/25tHc3rYifq8uAvXc6c4Zb9dV7oLLqQCIldO99TvHoZeaaXGpCpkA06u9z1Pn9lEopgWbHG43RsLBE7+R2dPiOJ5SU4sb+DUQNCrEC6AGZ2U3NqpdO5AR6lCaL32bjJduqfEE3iSoXpB1h1yXY32AHqnW1RpIevGXCSA35Sccw6JIuRVJa+kJbt/ukIdp7ht+lwVAWsMXDN4KRJDhGLVw0O8xdguzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6nnlc4pMs9YoIFI+ahDtZ1ZiOKWZH1Wrqbna6SDAXvU=;
 b=klWkPn+A44GIu0W2PtHTr580PkaME5yJlmF0ahFhybxhz+LfXbPnXWKes9BR4UuhU83y265eV4PisdsWxxUNEa7AT1cahAHQ55XenrYKuwgM5RT8C1TouZxOWv24UgbUIjqI9K03KKQ556P1CTTMIq+k5ujw4GZly7z3QbJU+x2D6I/LNmSjfLFqVjbZK2agegb4tyyWw1vmadANVpJQit41Za0brAbXblk8eZT5DRHR1PPXb9H6bZMmcyExNXZ9VzGjr20WOpcKXuAdZQHByx0c2m6LKXWxeo/6OLwFDuOk+ptECh5stGnkPnArdwzutGExcmyZkKs1wAGHj3sFVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6nnlc4pMs9YoIFI+ahDtZ1ZiOKWZH1Wrqbna6SDAXvU=;
 b=VZD+FeeKqKg5WaLDtnvhuFdq6RKaknzFKb9nbN9jTsJDeMb4SSf5gyXsN0QUcgJAScrfD5JcXJLuX48jjcywzefaZkmyG3PfHXFoAs0P1ub/lkK9nnCIQFBsEuypFTqbSpOzFAJqAn6hx8IloVsZyb8NQOCu1mApl4hyWvpSyu4=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB4963.namprd12.prod.outlook.com (2603:10b6:208:17d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Tue, 18 May
 2021 13:26:55 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4129.032; Tue, 18 May 2021
 13:26:55 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-9-thomas.hellstrom@linux.intel.com>
 <6149ee00-fa4a-3757-117a-8d622eb42070@amd.com>
 <45054121-954d-f20c-52b5-f375db7096e0@linux.intel.com>
 <d547a037-2aa8-76a8-375c-5da580fab631@amd.com>
 <400de9b7-f385-0581-ebb5-e07247d4c996@linux.intel.com>
 <b8e062c5-6b63-09c5-e98a-be9bf4813c61@amd.com>
 <0eb87fe5-439d-5077-cf19-015966bc3f5f@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <93b3d7f4-3a82-e3e6-657e-877eac9aaddd@amd.com>
Date: Tue, 18 May 2021 15:26:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <0eb87fe5-439d-5077-cf19-015966bc3f5f@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:8470:36a5:2010:f0c4]
X-ClientProxiedBy: AM0PR07CA0016.eurprd07.prod.outlook.com
 (2603:10a6:208:ac::29) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:8470:36a5:2010:f0c4]
 (2a02:908:1252:fb60:8470:36a5:2010:f0c4) by
 AM0PR07CA0016.eurprd07.prod.outlook.com (2603:10a6:208:ac::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4150.11 via Frontend Transport; Tue, 18 May 2021 13:26:54 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 07b8cae1-168a-4574-9f00-08d91a009abe
X-MS-TrafficTypeDiagnostic: BL0PR12MB4963:
X-Microsoft-Antispam-PRVS: <BL0PR12MB49635179F22737181A319706832C9@BL0PR12MB4963.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XeOAGUZf/NRes5M14Is9NIGuZbIDvSQQihxx0MkSpzTtpIXRyojFWmrtMS1rL4TwmWP4sCgP7T40fgdlO+7imZvTV0eujpwYBvOJGVeP3JPUD2s5XlnxnIaHzjj05GHPQGorfTjZPD42Tjes91Q/synwYjtYlPVkioLmOnM6js2aiyR4B3jhQAFj/Z7cK+PFVlZtKTlehY+h43frc7iscTCLmMWRU8KjUxhQuvjLy3Jgoh8cSt7Iz2lf2qUARBBTLndZr9m2RhJE9TxWQ2YaDZ4evXdsNbzksHNOYVQBihg3FC04iBeO+OHfvsq2HFy9EwG09BWwp5m1kVhy6KmkwJBpEGI8OrXPJTjku6n/VKESXmRI+/Ampzu2JZST9cmvmb2duUvM64Lc0Mna2USBHje4lbej8tQ496m+KdVCoglPEghtPCZSCx6sFvPst6HzWf7ovUr5LEuOVUp0dcM5rZvG3wPY7H3Fh8p0PbjlwTQklc1u+Mylf/bJlBka+pllRfRt97JJUg2hI4q7igQF6oU5NJPn5nGdJIVtmuzKMnoZeif/eOCKGlMGZR4dYilvRZbJBb2nj+tUBkwi1+MVlnQlQg8N/yJu+DfMUzppT/vRfuhlkNGKamLbHMtj0+iPLSevhVIkIiXYJ3QyaJ4H897pI0yZiDT3cWj/5JknkNxqp1EY/QhY6tMCzH5ACd3QB+YsHic/l40hAOt2qG6zSA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(136003)(366004)(396003)(39850400004)(6486002)(5660300002)(8676002)(83380400001)(31686004)(38100700002)(36756003)(66946007)(8936002)(478600001)(66574015)(16526019)(86362001)(53546011)(186003)(66476007)(66556008)(2616005)(52116002)(31696002)(6666004)(2906002)(316002)(41533002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?NllwOE5yNW1qTzd1d0RmTDF6U0JHTHpFQjNiZktvWHhyM21lQWY3eXIxd09S?=
 =?utf-8?B?SjNhZHQ3a2tnUEc3RW90eFpiZFVrazVVcHVEeWRRYTZwVmprdjVNUllXd09W?=
 =?utf-8?B?OWxoRkxVUlhRS2VvaWVYWHl0eHh4RXhxMWdMSmtGbjNpdTFMaXV1dTdnUTJ4?=
 =?utf-8?B?N3ZyRDlhekxSd0Q5SGFTZGl2em4zS0lVZkVUM2p3d0gwdGMwSEk3Z09Ja0dr?=
 =?utf-8?B?alBrQlcweTNhUWVIL2VzMjNNdzZ4ZE1SSnAxY2h0VmJMTE9FMnE4aDA5eG95?=
 =?utf-8?B?L211eGI3UG5jSjNXVlFBMTlta00rdXpFWXFOMnB5TXVrbkFNUG1LeTZWT0dx?=
 =?utf-8?B?RlVNQlA0Wm5wL1l3bGJPM0tJMk8xYjVPdWJySzdNelBuckwxVnhOa21sUWly?=
 =?utf-8?B?ODEzYkJxbmwrb3c1eTJJdFJFMUFBVXU5Z1NsOHcrbVlLcC81bEEyNU9WYk5i?=
 =?utf-8?B?ZmEzTkxpRUhmSjlsS0JNUitneEpkUmhySFl5N1o5S3BkaU43a2VJWG9seU80?=
 =?utf-8?B?aTVPS0Vva2FnT3FRU0I5RmhSdWw0eEF5OGtXejE4NVFhRTNYWHdVRUtjUHdl?=
 =?utf-8?B?aWNCdDZzWkdFNXgrekxzRmV0TWJIRkFlYkJoajBFNGlMcmMxMjRwbkdvTUhl?=
 =?utf-8?B?ZXc3bC9tQm9HbmlHNzgzSlJmY3Q1Vi9Da1BKb2dJSlBaNCtFTGNKZ2pFZGJ6?=
 =?utf-8?B?OVQrTXBBZFFmNndKc2dmMzFIeDYzTVIrZGVTbVQ3d0pDZFNmZW0wUGJzaGFE?=
 =?utf-8?B?Z1BWakVRM0Fja1kyRXVhWWUvbFJ6SXFxMGNIRTdkem42cWYzQkxXK3JRc2h5?=
 =?utf-8?B?UmRHTFlCVFBMWXdtWVZFeXhFT0NvbGFUVHhMVSsxVlQzVWtYZWFHNTUwS0RI?=
 =?utf-8?B?M1lFZ1hmVVlXUFBtSC9FYWdhdUp0MS9ZSnQvbkdKaWdLLzQ4b0sycTRqMTFV?=
 =?utf-8?B?N3V6SW1IU0dxTlhFOE5MTGNuNzQycExPVFVLckhSckpHUGJyT293alU1Q3hm?=
 =?utf-8?B?cmdNdnBncDU4WVpuV0Zid1ZFZHg3YmlFdkVKKzREcXduSzJDWEM1bzhYVEpP?=
 =?utf-8?B?QnpLUkNsOFFvQ05nVTJnWHBTd0FKWE96VHl4VTlsMVl1TGVsa2xyL1l0eW44?=
 =?utf-8?B?OVVXbHdzbHhTRFpRUy9ITmd2KzBiVEQ1dUh5OWwvbUphQmd3d09pSUZEM2Ft?=
 =?utf-8?B?S3BrTDZxVUFjeHk2UWxURXpVUUVyOXpBRE5kS1JyQXM1Z3RSQnA0RUcyK25Z?=
 =?utf-8?B?RjVlNlIyMGJkVkR5blo2aVQ1OTM5Ykk0WEtzSTJxYno2c2ozeGMxdWFsQUxz?=
 =?utf-8?B?QnpLKy91eUFFckhGRnZiYmV3UUk1RnZzb3c3VWlXbXBFeHlldEJJVENOL01t?=
 =?utf-8?B?YUhpOEczbEZmb0puUCt1YXFRV21OcEllSFlRSWhBN011TEFHY2FUL2tlSDZI?=
 =?utf-8?B?Sm5ZU2ZNblV1Nmw5RXZ1STUxVE0rLzRXemVsejJxY1FWejcxVnFSV0x5clZN?=
 =?utf-8?B?NUwyMmRXS3BJaURBUklYYXNGM2J2VmM5c2wvTEs4MGFpOXkwWDRWbjBPUHZN?=
 =?utf-8?B?RVVFYzFpeDJ4Z2o0cm92VitCNmoxUFZvV2FKdVpGM1FnYlJoSWtEL1B4U0Ew?=
 =?utf-8?B?RnRNWElTQnl0ZWtpYXl0bnhzWnU4RkJWSnM3SjcwUHNWYW5ycis4bGdwaEpz?=
 =?utf-8?B?ZjI4eCtpdmpqc01qOTdLTVdnL01WaTg5MlEwOWJPN0tiQ2RnOVQ4UmU2ckZE?=
 =?utf-8?B?ZENrUE5meXBMM2JFK09UWGxidFFlRGZPMlFYM1JqZUdCMmRwOVJCRVdQUjlS?=
 =?utf-8?B?ZUx3REpIc3NGTFRncGZjYlQ3bWpLTE1VdWdSdktvd0s2dmUvbmhGckppSVRr?=
 =?utf-8?Q?ARb0THw0w8Gf/?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07b8cae1-168a-4574-9f00-08d91a009abe
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2021 13:26:54.9431 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6VPA4pFa+/bBK9ujhj1iLylRwHOC7ib+xQ7rlANFscA5pO290iIUFLu6Rl+vzfXK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4963
Subject: Re: [Intel-gfx] [PATCH v2 08/15] drm/i915/ttm Add a generic TTM
 memcpy move for page-based iomem
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMTguMDUuMjEgdW0gMTU6MjQgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPgo+IE9uIDUv
MTgvMjEgMzowOCBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4gQW0gMTguMDUuMjEgdW0g
MTQ6NTIgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4+Cj4+PiBPbiA1LzE4LzIxIDI6MDkg
UE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+Pj4gQW0gMTguMDUuMjEgdW0gMTQ6MDQgc2No
cmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4+Pj4KPj4+Pj4gT24gNS8xOC8yMSAxOjU1IFBNLCBD
aHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBBbSAxOC4wNS4yMSB1
bSAxMDoyNiBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pj4+Pj4+IFRoZSBpbnRlcm5hbCB0
dG1fYm9fdXRpbCBtZW1jcHkgdXNlcyB2bWFwIGZ1bmN0aW9uYWxpdHksIGFuZCAKPj4+Pj4+PiB3
aGlsZSBpdAo+Pj4+Pj4+IHByb2JhYmx5IG1pZ2h0IGJlIHBvc3NpYmxlIHRvIHVzZSBpdCBmb3Ig
Y29weWluZyBpbi0gYW5kIG91dCBvZgo+Pj4+Pj4+IHNnbGlzdCByZXByZXNlbnRlZCBpbyBtZW1v
cnksIHVzaW5nIGlvX21lbV9yZXNlcnZlKCkgLyAKPj4+Pj4+PiBpb19tZW1fZnJlZSgpCj4+Pj4+
Pj4gY2FsbGJhY2tzLCB0aGF0IHdvdWxkIGNhdXNlIHByb2JsZW1zIHdpdGggZmF1bHQoKS4KPj4+
Pj4+PiBJbnN0ZWFkLCBpbXBsZW1lbnQgYSBtZXRob2QgbWFwcGluZyBwYWdlLWJ5LXBhZ2UgdXNp
bmcga21hcF9sb2NhbCgpCj4+Pj4+Pj4gc2VtYW50aWNzLiBBcyBhbiBhZGRpdGlvbmFsIGJlbmVm
aXQgd2UgdGhlbiBhdm9pZCB0aGUgb2NjYXNpb25hbCAKPj4+Pj4+PiBnbG9iYWwKPj4+Pj4+PiBU
TEIgZmx1c2hlcyBvZiB2bWFwKCkgYW5kIGNvbnN1bWluZyB2bWFwIHNwYWNlLCBlbGltaW5hdGlv
biBvZiBhIAo+Pj4+Pj4+IGNyaXRpY2FsCj4+Pj4+Pj4gcG9pbnQgb2YgZmFpbHVyZSBhbmQgd2l0
aCBhIHNsaWdodCBjaGFuZ2Ugb2Ygc2VtYW50aWNzIHdlIGNvdWxkIAo+Pj4+Pj4+IGFsc28gcHVz
aAo+Pj4+Pj4+IHRoZSBtZW1jcHkgb3V0IGFzeW5jIGZvciB0ZXN0aW5nIGFuZCBhc3luYyBkcml2
ZXIgZGV2ZWxwbWVudCAKPj4+Pj4+PiBwdXJwb3Nlcy4KPj4+Pj4+PiBQdXNoaW5nIG91dCBhc3lu
YyBjYW4gYmUgZG9uZSBzaW5jZSB0aGVyZSBpcyBubyBtZW1vcnkgCj4+Pj4+Pj4gYWxsb2NhdGlv
biBnb2luZyBvbgo+Pj4+Pj4+IHRoYXQgY291bGQgdmlvbGF0ZSB0aGUgZG1hX2ZlbmNlIGxvY2tk
ZXAgcnVsZXMuCj4+Pj4+Pj4KPj4+Pj4+PiBGb3IgY29waWVzIGZyb20gaW9tZW0sIHVzZSB0aGUg
V0MgcHJlZmV0Y2hpbmcgbWVtY3B5IHZhcmlhbnQgZm9yCj4+Pj4+Pj4gYWRkaXRpb25hbCBzcGVl
ZC4KPj4+Pj4+Pgo+Pj4+Pj4+IE5vdGUgdGhhdCBkcml2ZXJzIHRoYXQgZG9uJ3Qgd2FudCB0byB1
c2Ugc3RydWN0IGlvX21hcHBpbmcgYnV0IAo+Pj4+Pj4+IHJlbGllcyBvbgo+Pj4+Pj4+IG1lbXJl
bWFwIGZ1bmN0aW9uYWxpdHksIGFuZCB0aGF0IGRvbid0IHdhbnQgdG8gdXNlIHNjYXR0ZXJsaXN0
cyBmb3IKPj4+Pj4+PiBWUkFNIG1heSB3ZWxsIGRlZmluZSBzcGVjaWFsaXplZCAoaG9wZWZ1bGx5
IHJldXNhYmxlKSBpdGVyYXRvcnMgCj4+Pj4+Pj4gZm9yIHRoZWlyCj4+Pj4+Pj4gcGFydGljdWxh
ciBlbnZpcm9ubWVudC4KPj4+Pj4+Cj4+Pj4+PiBJbiBnZW5lcmFsIHllcyBwbGVhc2Ugc2luY2Ug
SSBoYXZlIHRoYXQgYXMgVE9ETyBmb3IgVFRNIGZvciBhIAo+Pj4+Pj4gdmVyeSBsb25nIHRpbWUu
Cj4+Pj4+Pgo+Pj4+Pj4gQnV0IEkgd291bGQgcHJlZmVyIHRvIGZpeCB0aGUgaW1wbGVtZW50YXRp
b24gaW4gVFRNIGluc3RlYWQgYW5kIAo+Pj4+Pj4gZ2l2ZSBpdCBwcm9wZXIgY3Vyc29yIGhhbmRs
aW5nLgo+Pj4+Pj4KPj4+Pj4+IEFtZGdwdSBpcyBhbHNvIHVzaW5nIHBhZ2UgYmFzZWQgaW9tZW0g
YW5kIHdlIGFyZSBoYXZpbmcgc2ltaWxhciAKPj4+Pj4+IHdvcmthcm91bmRzIGluIHBsYWNlIHRo
ZXJlIGFzIHdlbGwuCj4+Pj4+Pgo+Pj4+Pj4gSSB0aGluayBpdCBtYWtlcyBzZW5zZSB0byB1bmlm
eSB0aGlzIGluc2lkZSBUVE0gYW5kIHJlbW92ZSB0aGUgCj4+Pj4+PiBvbGQgbWVtY3B5IHV0aWwg
ZnVuY3Rpb24gd2hlbiBkb25lLgo+Pj4+Pj4KPj4+Pj4+IFJlZ2FyZHMsCj4+Pj4+PiBDaHJpc3Rp
YW4uCj4+Pj4+Cj4+Pj4+IENocmlzdGlhbiwKPj4+Pj4KPj4+Pj4gSSB3YXMgdGhpbmtpbmcgd2hl
biB3ZSByZXBsYWNlIHRoZSBiby5tZW0gd2l0aCBhIHBvaW50ZXIgKGFuZCAKPj4+Pj4gcGVyaGFw
cyBoYXZlIGEgZHJpdmVyIGNhbGxiYWNrIHRvIGFsbG9jYXRlIHRoZSBiby0+bWVtLAo+Pj4+PiB3
ZSBjb3VsZCBwZXJoYXBzIGVtYmVkIGEgc3RydWN0IHR0bV9rbWFwX2l0ZXIgYW5kIHVzZSBpdCBm
b3IgYWxsIAo+Pj4+PiBtYXBwaW5nIGluIG9uZSB3YXkgb3IgYW5vdGhlcikuIFRoYXQgd291bGQg
bWVhbiBwZXJoYXBzIGxhbmQgdGhpcyAKPj4+Pj4gaXMgaTkxNSBub3cgYW5kIHNvcnQgb3V0IHRo
ZSB1bmlmaWNhdGlvbiBvbmNlIHRoZSBzdHJ1Y3QgCj4+Pj4+IHR0bV9yZXNvdXJjZSwgc3RydWN0
IHR0bV9idWZmZXJfb2JqZWN0IHNlcGFyYXRpb24gaGFzIGxhbmRlZD8KPj4+Pgo+Pj4+IFRoYXQg
c3R1ZmYgaXMgcmVhZHksIHJldmlld2VkIGFuZCBJJ20ganVzdCB3YWl0aW5nIGZvciBzb21lIGFt
ZGdwdSAKPj4+PiBjaGFuZ2VzIHRvIGxhbmQgaW4gZHJtLW1pc2MtbmV4dCB0byBwdXNoIGl0Lgo+
Pj4+Cj4+Pj4gQnV0IHllcyBpbiBnZW5lcmFsIGFuIGl0ZXJhdG9yIGZvciB0aGUgcmVzb3VyY2Ug
b2JqZWN0IHNvdW5kcyBsaWtlIAo+Pj4+IHRoZSByaWdodCBwbGFuIHRvIG1lIGFzIHdlbGwuCj4+
Pj4KPj4+PiBDaHJpc3RpYW4uCj4+Pgo+Pj4gT0ssIHNvIHRoZW4gYXJlIHlvdSBPSyB3aXRoIGxh
bmRpbmcgdGhpcyBpbiBpOTE1IGZvciBub3c/IFRoYXQgd291bGQgCj4+PiBhbHNvIG9mYyBtZWFu
IHRoZSBleHBvcnQgeW91IE5BSydkIGJ1dCBzdHJpY3RseSBmb3IgdGhpcyBtZW1jcHkgdXNlIAo+
Pj4gdW50aWwgd2UgbWVyZ2UgaXQgd2l0aCBUVE0/Cj4+Cj4+IFdlbGwgeW91IGNhbiBvZiBjb3Vy
c2UgcHJvdG90eXBlIHRoYXQgaW4gaTkxNSwgYnV0IEkgcmVhbGx5IGRvbid0IAo+PiB3YW50IHRv
IGV4cG9ydCB0aGUgVFQgZnVuY3Rpb25zIHVwc3RyZWFtLgo+Cj4gSSB1bmRlcnN0YW5kLCBJIG9u
Y2UgaGFkIHRoZSBzYW1lIHRob3VnaHRzIHRyeWluZyB0byBhdm9pZCB0aGF0IGFzIGZhciAKPiBh
cyBwb3NzaWJsZSwgc28gdGhpcyBmdW5jdGlvbiB3YXMgYWN0dWFsbHkgdGhlbiBhZGRlZCB0byB0
aGUgdHRtX2JvIAo+IGludGVyZmFjZSwgKGhlbmNlIHRoZSBhd2t3YXJkIG5hbWluZykgYXMgYSBo
ZWxwZXIgZm9yIGRyaXZlcnMgCj4gaW1wbGVtZW50aW5nIG1vdmUoKSwgZXNzZW50aWFsbHkgYSB2
ZXJ5IHNwZWNpYWwgY2FzZSBvZiAKPiB0dG1fYm9fbW92ZV9hY2NlbF9jbGVhbnVwKCksIGJ1dCBh
bnl3YXksIHNlZSBiZWxvdzoKPgo+Pgo+PiBDYW4gd2UgY2xlYW5seSBtb3ZlIHRoYXQgZnVuY3Rp
b25hbGl0eSBpbnRvIFRUTSBpbnN0ZWFkPwo+Cj4gSSdsbCB0YWtlIGEgbG9vayBhdCB0aGF0LCBi
dXQgSSB0aGluayB3ZSdkIGluaXRpYWxseSBiZSBoYXZpbmcgCj4gaXRlcmF0b3JzIG1pbWljaW5n
IHRoZSBjdXJyZW50IG1vdmVfbWVtY3B5KCkgZm9yIHRoZQo+IGxpbmVhciBpb21lbSAhV0MgY2Fz
ZXMsIGhvcGUgdGhhdCdzIE9LLgoKWWVhaCwgdGhhdCdzIHBlZWZlY3RseSBmaW5lIHdpdGggbWUu
IEkgY2FuIHRhY2tsZSBjbGVhbmluZyB1cCBhbGwgCmRyaXZlcnMgYW5kIG1vdmUgb3ZlciB0byB0
aGUgbmV3IGltcGxlbWVudGF0aW9uIHdoZW4gdGhhdCBpcyBmdWxseSBjb21wbGV0ZS4KCkFzIEkg
c2FpZCB3ZSBhbHJlYWR5IGhhdmUgdGhlIHNhbWUgcHJvYmxlbSBpbiBhbWRncHUgYW5kIG9ubHkg
c29sdmVkIGl0IApieSBhdm9pZGluZyBtZW1jcHkgYWxsIHRvZ2V0aGVyLgoKQ2hyaXN0aWFuLgoK
Pgo+IC9UaG9tYXMKPgo+Cj4+Cj4+IENocmlzdGlhbi4KPj4KPj4+Cj4+Pgo+Pj4gL1Rob21hcwo+
Pj4KPj4+Pgo+Pj4+Pgo+Pj4+PiAvVGhvbWFzCj4+Pj4+Cj4+Pj4+Cj4+Pj4KPj4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
