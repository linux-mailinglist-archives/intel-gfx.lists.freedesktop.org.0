Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A13B63D7897
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 16:36:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 136E46E077;
	Tue, 27 Jul 2021 14:36:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C4836E077
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 14:36:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="199638200"
X-IronPort-AV: E=Sophos;i="5.84,273,1620716400"; d="scan'208";a="199638200"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 07:36:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,273,1620716400"; d="scan'208";a="498506374"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 27 Jul 2021 07:36:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 27 Jul 2021 07:36:45 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 27 Jul 2021 07:36:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 27 Jul 2021 07:36:45 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 27 Jul 2021 07:36:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g/9WrxLJzdHKCVjsadzDNFvgD2F5f1NxT+otV0UB1xiR1CZ5id1b2tWUAVtjIbai0Kk/vr/KpumNiza4wmoz1Yk0eWvv0mkf+8HyfBZcBbjIMENFjyPbanQ/dGEIuQ4Z/+g3cOzroqX22TtZLVrolw2uXWPIZewSZZN11t6L44njgbLcmg8DAM0Y6yQwXqetjgHO+nJBjTeNdjCFP0ZHLuFf5MsvZghYh8j406RG8/DafULuiOksZyQz7isQGYfNNLz0x4ZVD5cLufcTrsNoefOZfEA0/Cml8gdvxpirtkneqdZfvzzB5W3v9xz/YVfpku3mPMW8Lf4SHcY0Hz/JcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3/YUo5nezmrmVXhVs3D7SQCs+pIHIRl8yqu8LCTjHFY=;
 b=BV7y2CGFsvFILuoM3HFIKvClAZM2/pUOijTPl+0i1n/K3Yq/2g/S5f0A2YC+c8Iv9vsAXuZbixSSiLZtc2z+lP9Py08hiMrz4eyGQNs+j7ZAbx3Uzm8uC4x1tiTNSXAnzWl/G16ft2/K7YktAEDl0qPc+E7UoKP2cQTdJ/NE0V6mSS3YMwdfs6W6Ug8UGvg8wb2HVe8V1sC0at4hBbH+P/cO+PBLk2VKfps0Oe4R8nVXNvltQ9nKdfEpuXNllT5BuqXLELZWwUy6wbAyKEwIANuJ3OCxQRJCJsfUheJt2BbeX/Tyv1ne+yk9kKblqJvSstPIU3QJcA7UqIC6DlAAxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3/YUo5nezmrmVXhVs3D7SQCs+pIHIRl8yqu8LCTjHFY=;
 b=Ed3pq2y/0U3fvZZ9+NtvB8nBmDSzLyEenrQsKnLb3gBcexiI8paA4o/J4iYqMEc15bSrr5S189TylRBJQXg9bACh9jiT3Y7LGyqlSNVrjDMlLl4KlxUqgvBfwwOyz8+MTueW0v8v9jr96mTnuyR5i/PWmiy6ti/CIbKh3aUkuRU=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH2PR11MB4470.namprd11.prod.outlook.com (2603:10b6:610:4a::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.29; Tue, 27 Jul
 2021 14:36:43 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::93a:f79b:bd76:277a]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::93a:f79b:bd76:277a%6]) with mapi id 15.20.4352.031; Tue, 27 Jul 2021
 14:36:43 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210726181559.80855-1-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <133203bd-66eb-7a2b-79da-8abf8953774f@intel.com>
Date: Tue, 27 Jul 2021 17:36:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210726181559.80855-1-jose.souza@intel.com>
Content-Language: en-US
X-ClientProxiedBy: MRXP264CA0024.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:500:15::36) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.237.72.174] (134.134.137.84) by
 MRXP264CA0024.FRAP264.PROD.OUTLOOK.COM (2603:10a6:500:15::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4352.25 via Frontend Transport; Tue, 27 Jul 2021 14:36:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3b88e86d-d72f-4c38-d769-08d9510bf39b
X-MS-TrafficTypeDiagnostic: CH2PR11MB4470:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR11MB44704E3ADA0C2C5D6AB92D64B8E99@CH2PR11MB4470.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GAq6DhSFqE0Vi6BdNKB+7jVtKdhQo81j07l0OYTv47ucZDqXsgVnqcGzUYQyeHcy4St107UoG2yMkLVdmCGSuXxoheDTfKJdBjIuHtzZ8oTKLJ8LRaZdEMyXgWSeUaFFZgc7l43T2HyaQCUODkANzAeFOGFYAVY01YhsAO/7A8fBB8jz64xR0/41QjG2fkix24dhEfepncpJDtWHenUXLk6TBlycsYYWrsOzbVgaGP1CkV3jAgyWlWS7pjBPSVvuHFDDZqZEcsJMFTLBNyo9He1AxCVm0VNLrz3f44rHoAyMiORj/ka4vD9hhK1s46RhaTWxUiULGKkYcOi+4FU4FpKHgrxIlCW/pfJJ556DGjN76kIU+nvAfsjv4AXRUo/U0Y+VQLQ4tUthxsupShlAUljrYaK9TrRLSR/xhlzeHWclYqHQrrzL2RvF4VEyPm+BB8O5ii7sxgJ5qdrnj5Yd8P8JpuKyeZ5mgbsOPegKRDaODeD/Az4gx9dHuFOmrU4w1IetdmhWQp+FSmZaiPcIQEdB15pyOChtw0+bzTd521Kive2nKlo09z2PmH6KMOGkzyjVDPzB9A13hZUtjotPMagOIO8NdMA3HGrV4zmXqawTBHEVA++ruiT9/ISqYzfJs4is7WBvUk71qoLg5Ada7JecxVn29r65E7ULTiwju5aDl6Ijc/9ZZ/j2PvGsdKYpL7i8mhMQq0D03fsUWcXLg8J2Tv5MyXBugNgltS9/jWE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(39860400002)(366004)(376002)(396003)(956004)(2616005)(66556008)(26005)(83380400001)(6666004)(53546011)(16576012)(2906002)(4326008)(66574015)(31686004)(6486002)(5660300002)(31696002)(8936002)(86362001)(38100700002)(316002)(478600001)(8676002)(66946007)(186003)(36756003)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YnYwbHV3SG0wbmhPWmV4SVBaMWdrZjZ2aFBWbVFsayttdFFLUmdRaFA2Z3gv?=
 =?utf-8?B?MHk0WFlHQlVOZGovbkNiWlhGVzJ0MGRBTmduUzhMNW5zVE5RVkhUbUVHcjdX?=
 =?utf-8?B?Vk55N1ZZSTc1NWx6SnpqeTFCSGQwb2c0bEhzSi9OZ0JBQlA2bkdCU3UvcVYw?=
 =?utf-8?B?bnFaKzRsT1dKT0VoNWdQaXJNWEMva3ViQnNiNldmWjF5SXNCREpDVlovOWZN?=
 =?utf-8?B?WVdPbktrY0R6SjJ0QjlaRWxUVndyMUorVDFkVlNORGt0S0ZhZmpoRlZydjgr?=
 =?utf-8?B?Vm5Mc2Q5NkI5L1RnMHBOQnI4a3IyWURHUC9UOVNwZHF0SUFlWXlvNjgzWC8z?=
 =?utf-8?B?T05mVVpBNHJrWmdrY0xrQjJHcS9QNXVRL1NwbGxPODVranoxeWdCLzY4em5k?=
 =?utf-8?B?QTFPU0NBeWF3WmhsdUw4QU95U2Mvc3FyMmZSZ2pPWDNlMFpTSUxXeEs2alNJ?=
 =?utf-8?B?VUtDb3dMZEJxY2ZsU1ppbEwzVE8xNHl1T2hwZGs3NGZmNXdSYk5xVjA4Q0NG?=
 =?utf-8?B?NTJpWmhYcGtrU0hZL09pakdSQ2V4YTZWUExhQVJEdUc3ZGpyTlUrRGQva2NY?=
 =?utf-8?B?c0FTNSt0QlBSVXMwemFzTTFRQU0xNzZDbG1ENStrZFJyWXBoWStoanpHTmFL?=
 =?utf-8?B?c2RybG5BZUZaR3ZBSk1zck5RUjd6Q0htc0RONjkrd0daelB5MlNEMFNNWXho?=
 =?utf-8?B?dXowOVJrRVNqZ1pOeUpDZjlxRUxoSFkwM0Y3clVHVzZWOHRIWTNqZ3UyL1lq?=
 =?utf-8?B?UFNWbFhGOG41ZndFaENFcE94QTJyUUMzS3ZjaDVOVFlzME95dFF5N25saUZD?=
 =?utf-8?B?MU44eFREcmdnc0swVUJhQ2wwZUxWaXZOc3BXSU9qSlVxeWNRWWxHV3F5ZUho?=
 =?utf-8?B?R1FSako5cCt2Wmtnc0E3T3hkeG01bndRSlo5cWdSU1RRK0FXRk8xWk4rUUFr?=
 =?utf-8?B?V3ZneXQ1S1ZVN1kvTG05YWsvUEQyRGZvVkU4blJyNUQxS0dxSXVjcTczNzFS?=
 =?utf-8?B?YlRCcDZ1cjhQN2R5eUhJMUpJNERxdjJ0VUMzOVVKUkt1V1RtMUtPYjVIMXZh?=
 =?utf-8?B?ZWZ1TnRyUDgyS1dyNjhGOXBrNUx5T0xoMVliK0V4d0ZINUdzUDFJOSsrd0N1?=
 =?utf-8?B?azg2U0ZMZkhkTUVVSFVBU1Nzb2pqSHAzUVRNRExqcDFra1JtRGVlcUZmb2NZ?=
 =?utf-8?B?U1FvRnNEZHVId1JibEE0RkxzT3FtVHVrWFk2ZjNON2FsdWFWMnFwWEZaQXpU?=
 =?utf-8?B?MjhOa0NhVWc4aHNiYzZGRDVRenJtUHhDVHA1Q0lHWTFqaXFWaUJEMHVhbXNM?=
 =?utf-8?B?Skt0M3lFQ05tTTd2Ynh0bkF1Ykh3WFJZUlJnVUFQZnl6UUQ3SnNldE92aStI?=
 =?utf-8?B?eGJhTHpCMEMycnZWbFFaeVRjSUtJbTVEZTc1YzhRSDMyTUZGVWpYbGtKeTNO?=
 =?utf-8?B?cHB1bTE0RFpZRlZSSGlVajM1WGZVYitWVWorYm1DMCtlTFBmMUY1eVI4MXN2?=
 =?utf-8?B?M0MyRHBmYThXd1F5cjVIaUlFSTZ0SFQvS3BkYW8vYi9ZQnNkbmtGQUxxSmIr?=
 =?utf-8?B?R0xqZmg5N3V4enVabk1iUmJnNUZoeDNoMGRKZXZ3SlB0VGYrS0V6ZFlWTDFt?=
 =?utf-8?B?cERBWnVDM0QwekdMWEVPQ1BuRVBDOEN5R3ZHcXFSK2Zrei9rTDA1TjVFUlZZ?=
 =?utf-8?B?bnhlWUJNeDNKc0k5VFE4Wk9aQmlQMVllTFhXbUsxcU9rYjhvQzYrdXFBajF6?=
 =?utf-8?Q?n9yFnY13rMIl6aGP5/fZQ4ZGlYv9jQgukCT7hTR?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b88e86d-d72f-4c38-d769-08d9510bf39b
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2021 14:36:43.6424 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: chTghq7eOL0a+FfRMRJrpJ99/01AK3SJ3FMOejVE+MLIc4R99RQRzTgYJAfb70GZMJUEI1YRx+VPt77Xon9pPHzVkjCCADeF+JbEsfG/nEc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4470
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Disable audio,
 DRRS and PSR before planes
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

TG9va3MgZ29vZCB0byBtZS4KClJldmlld2VkLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3ll
b25nLm11bkBpbnRlbC5jb20+CgpPbiA3LzI2LzIxIDk6MTUgUE0sIEpvc8OpIFJvYmVydG8gZGUg
U291emEgd3JvdGU6Cj4gSERNSSBhbmQgRGlzcGxheVBvcnQgc2VxdWVuY2VzIHN0YXRlcyB0aGF0
IGF1ZGlvIGFuZCBQU1Igc2hvdWxkIGJlCj4gZGlzYWJsZWQgYmVmb3JlIHBsYW5lcyBhcmUgZGlz
YWJsZWQuCj4gTm90IGZvbGxvd2luZyBpdCBkaWQgbm90IGNhdXNlZCBhbnkgcHJvYmxlbXMgdXAg
dG8gQWxkZXJsYWtlLVAgYnV0Cj4gZm9yIHRoaXMgcGxhdGZvcm0gaXQgY2F1c2VzIHVuZGVycnVu
cyBkdXJpbmcgdGhlIFBTUjIgZGlzYWJsZQo+IHNlcXVlbmNlLgo+IAo+IFNwZWNpZmljYXRpb24g
ZG9uJ3QgbWVudGlvbiB0aGF0IERSUlMgc2hvdWxkIGJlIGRpc2FibGVkIGJlZm9yZSBwbGFuZXMK
PiBidXQgaXQgbG9va3Mgc2FmZXIgdG8gc3dpdGNoIGJhY2sgdG8gdGhlIGRlZmF1bHQgcmVmcmVz
aCByYXRlIGJlZm9yZQo+IGZvbGxvd2luZyB3aXRoIHRoZSByZXN0IG9mIHRoZSBwaXBlIGRpc2Fi
bGUgc2VxdWVuY2UuCj4gCj4gQlNwZWM6IDQ5MTkxCj4gQlNwZWM6IDQ5MTkwCj4gQ2M6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IEd3YW4tZ3ll
b25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICB8IDMwICsrKysrKysrKysr
Ky0tLS0tLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
ICB8IDI0ICsrKysrKysrKysrKysrKwo+ICAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oICAgIHwgIDQgKysrCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX21zdC5jICAgfCAxNCArKysrKysrLS0KPiAgIDQgZmlsZXMgY2hhbmdlZCwgNTkg
aW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jCj4gaW5kZXggMjZhM2FhNzNmY2M0My4uMDYxYTY2M2Y0M2I4NCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+IEBAIC0zMjA0
LDEyICszMjA0LDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGlzYWJsZV9kZGlfZHAoc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gICAKPiAgIAlpbnRlbF9kcC0+bGlua190cmFpbmVk
ID0gZmFsc2U7Cj4gICAKPiAtCWlmIChvbGRfY3J0Y19zdGF0ZS0+aGFzX2F1ZGlvKQo+IC0JCWlu
dGVsX2F1ZGlvX2NvZGVjX2Rpc2FibGUoZW5jb2RlciwKPiAtCQkJCQkgIG9sZF9jcnRjX3N0YXRl
LCBvbGRfY29ubl9zdGF0ZSk7Cj4gLQo+IC0JaW50ZWxfZWRwX2RycnNfZGlzYWJsZShpbnRlbF9k
cCwgb2xkX2NydGNfc3RhdGUpOwo+IC0JaW50ZWxfcHNyX2Rpc2FibGUoaW50ZWxfZHAsIG9sZF9j
cnRjX3N0YXRlKTsKPiAgIAlpbnRlbF9lZHBfYmFja2xpZ2h0X29mZihvbGRfY29ubl9zdGF0ZSk7
Cj4gICAJLyogRGlzYWJsZSB0aGUgZGVjb21wcmVzc2lvbiBpbiBEUCBTaW5rICovCj4gICAJaW50
ZWxfZHBfc2lua19zZXRfZGVjb21wcmVzc2lvbl9zdGF0ZShpbnRlbF9kcCwgb2xkX2NydGNfc3Rh
dGUsCj4gQEAgLTMyMjcsMTAgKzMyMjEsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kaXNhYmxlX2Rk
aV9oZG1pKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ICAgCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7Cj4gICAJc3Ry
dWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciA9IG9sZF9jb25uX3N0YXRlLT5jb25uZWN0b3I7
Cj4gICAKPiAtCWlmIChvbGRfY3J0Y19zdGF0ZS0+aGFzX2F1ZGlvKQo+IC0JCWludGVsX2F1ZGlv
X2NvZGVjX2Rpc2FibGUoZW5jb2RlciwKPiAtCQkJCQkgIG9sZF9jcnRjX3N0YXRlLCBvbGRfY29u
bl9zdGF0ZSk7Cj4gLQo+ICAgCWlmICghaW50ZWxfaGRtaV9oYW5kbGVfc2lua19zY3JhbWJsaW5n
KGVuY29kZXIsIGNvbm5lY3RvciwKPiAgIAkJCQkJICAgICAgIGZhbHNlLCBmYWxzZSkpCj4gICAJ
CWRybV9kYmdfa21zKCZpOTE1LT5kcm0sCj4gQEAgLTMyMzgsNiArMzIyOCwyNSBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9kaXNhYmxlX2RkaV9oZG1pKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlLAo+ICAgCQkJICAgIGNvbm5lY3Rvci0+YmFzZS5pZCwgY29ubmVjdG9yLT5uYW1lKTsKPiAg
IH0KPiAgIAo+ICtzdGF0aWMgdm9pZCBpbnRlbF9wcmVfZGlzYWJsZV9kZGkoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gKwkJCQkgIHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLAo+ICsJCQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3Rh
dGUsCj4gKwkJCQkgIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpvbGRfY29ubl9z
dGF0ZSkKPiArewo+ICsJc3RydWN0IGludGVsX2RwICppbnRlbF9kcDsKPiArCj4gKwlpZiAob2xk
X2NydGNfc3RhdGUtPmhhc19hdWRpbykKPiArCQlpbnRlbF9hdWRpb19jb2RlY19kaXNhYmxlKGVu
Y29kZXIsIG9sZF9jcnRjX3N0YXRlLAo+ICsJCQkJCSAgb2xkX2Nvbm5fc3RhdGUpOwo+ICsKPiAr
CWlmIChpbnRlbF9jcnRjX2hhc190eXBlKG9sZF9jcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfSERN
SSkpCj4gKwkJcmV0dXJuOwo+ICsKPiArCWludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29k
ZXIpOwo+ICsJaW50ZWxfZWRwX2RycnNfZGlzYWJsZShpbnRlbF9kcCwgb2xkX2NydGNfc3RhdGUp
Owo+ICsJaW50ZWxfcHNyX2Rpc2FibGUoaW50ZWxfZHAsIG9sZF9jcnRjX3N0YXRlKTsKPiArfQo+
ICsKPiAgIHN0YXRpYyB2b2lkIGludGVsX2Rpc2FibGVfZGRpKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlLAo+ICAgCQkJICAgICAgc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIs
Cj4gICAJCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3Rh
dGUsCj4gQEAgLTQ1OTAsNiArNDU5OSw3IEBAIHZvaWQgaW50ZWxfZGRpX2luaXQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBvcnQgcG9ydCkKPiAgIAllbmNvZGVyLT5l
bmFibGUgPSBpbnRlbF9lbmFibGVfZGRpOwo+ICAgCWVuY29kZXItPnByZV9wbGxfZW5hYmxlID0g
aW50ZWxfZGRpX3ByZV9wbGxfZW5hYmxlOwo+ICAgCWVuY29kZXItPnByZV9lbmFibGUgPSBpbnRl
bF9kZGlfcHJlX2VuYWJsZTsKPiArCWVuY29kZXItPnByZV9kaXNhYmxlID0gaW50ZWxfcHJlX2Rp
c2FibGVfZGRpOwo+ICAgCWVuY29kZXItPmRpc2FibGUgPSBpbnRlbF9kaXNhYmxlX2RkaTsKPiAg
IAllbmNvZGVyLT5wb3N0X2Rpc2FibGUgPSBpbnRlbF9kZGlfcG9zdF9kaXNhYmxlOwo+ICAgCWVu
Y29kZXItPnVwZGF0ZV9waXBlID0gaW50ZWxfZGRpX3VwZGF0ZV9waXBlOwo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggYmIwYWViY2MzZWNk
My4uY2Y1OGRmOTEzMjc0OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCj4gQEAgLTMxOTUsNiArMzE5NSwyOCBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9lbmNvZGVyc19lbmFibGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gICAJ
fQo+ICAgfQo+ICAgCj4gK3N0YXRpYyB2b2lkIGludGVsX2VuY29kZXJzX3ByZV9kaXNhYmxlKHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ICsJCQkJICAgICAgIHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjKQo+ICt7Cj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xk
X2NydGNfc3RhdGUgPQo+ICsJCWludGVsX2F0b21pY19nZXRfb2xkX2NydGNfc3RhdGUoc3RhdGUs
IGNydGMpOwo+ICsJY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm9sZF9jb25uX3N0
YXRlOwo+ICsJc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm47Cj4gKwlpbnQgaTsKPiArCj4gKwlm
b3JfZWFjaF9vbGRfY29ubmVjdG9yX2luX3N0YXRlKCZzdGF0ZS0+YmFzZSwgY29ubiwgb2xkX2Nv
bm5fc3RhdGUsIGkpIHsKPiArCQlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciA9Cj4gKwkJ
CXRvX2ludGVsX2VuY29kZXIob2xkX2Nvbm5fc3RhdGUtPmJlc3RfZW5jb2Rlcik7Cj4gKwo+ICsJ
CWlmIChvbGRfY29ubl9zdGF0ZS0+Y3J0YyAhPSAmY3J0Yy0+YmFzZSkKPiArCQkJY29udGludWU7
Cj4gKwo+ICsJCWlmIChlbmNvZGVyLT5wcmVfZGlzYWJsZSkKPiArCQkJZW5jb2Rlci0+cHJlX2Rp
c2FibGUoc3RhdGUsIGVuY29kZXIsIG9sZF9jcnRjX3N0YXRlLAo+ICsJCQkJCSAgICAgb2xkX2Nv
bm5fc3RhdGUpOwo+ICsJfQo+ICt9Cj4gKwo+ICAgc3RhdGljIHZvaWQgaW50ZWxfZW5jb2RlcnNf
ZGlzYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiAgIAkJCQkgICBzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YykKPiAgIHsKPiBAQCAtMTAzMjcsNiArMTAzNDksOCBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9vbGRfY3J0Y19zdGF0ZV9kaXNhYmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwKPiAgIAo+ICAgCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCBvbGRf
Y3J0Y19zdGF0ZS0+Ymlnam9pbmVyX3NsYXZlKTsKPiAgIAo+ICsJaW50ZWxfZW5jb2RlcnNfcHJl
X2Rpc2FibGUoc3RhdGUsIGNydGMpOwo+ICsKPiAgIAlpbnRlbF9jcnRjX2Rpc2FibGVfcGxhbmVz
KHN0YXRlLCBjcnRjKTsKPiAgIAo+ICAgCS8qCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiBpbmRleCAxOWQ4ZDNlZWZiYzI3Li4z
NGVjODNmYzcxNjcwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiBAQCAtMTk2LDYgKzE5NiwxMCBAQCBzdHJ1Y3QgaW50
ZWxfZW5jb2RlciB7Cj4gICAJdm9pZCAoKnVwZGF0ZV9jb21wbGV0ZSkoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqLAo+ICAgCQkJCXN0cnVjdCBpbnRlbF9lbmNvZGVyICosCj4gICAJCQkJc3Ry
dWN0IGludGVsX2NydGMgKik7Cj4gKwl2b2lkICgqcHJlX2Rpc2FibGUpKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKiwKPiArCQkJICAgIHN0cnVjdCBpbnRlbF9lbmNvZGVyICosCj4gKwkJCSAg
ICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqLAo+ICsJCQkgICAgY29uc3Qgc3RydWN0
IGRybV9jb25uZWN0b3Jfc3RhdGUgKik7Cj4gICAJdm9pZCAoKmRpc2FibGUpKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKiwKPiAgIAkJCXN0cnVjdCBpbnRlbF9lbmNvZGVyICosCj4gICAJCQlj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqLAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+IGluZGV4IGUyZWI0NjMzNzM2OWUuLjhkMTNkN2IyNmEy
NWIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9t
c3QuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMK
PiBAQCAtMzQ4LDYgKzM0OCwxNiBAQCBzdGF0aWMgdm9pZCB3YWl0X2Zvcl9hY3Rfc2VudChzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgIAlkcm1fZHBfY2hlY2tfYWN0X3N0YXR1cygm
aW50ZWxfZHAtPm1zdF9tZ3IpOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyB2b2lkIGludGVsX21zdF9w
cmVfZGlzYWJsZV9kcChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiArCQkJCSAg
ICAgc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gKwkJCQkgICAgIGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKPiArCQkJCSAgICAgY29uc3Qgc3Ry
dWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm9sZF9jb25uX3N0YXRlKQo+ICt7Cj4gKwlpZiAob2xk
X2NydGNfc3RhdGUtPmhhc19hdWRpbykKPiArCQlpbnRlbF9hdWRpb19jb2RlY19kaXNhYmxlKGVu
Y29kZXIsIG9sZF9jcnRjX3N0YXRlLAo+ICsJCQkJCSAgb2xkX2Nvbm5fc3RhdGUpOwo+ICt9Cj4g
Kwo+ICAgc3RhdGljIHZvaWQgaW50ZWxfbXN0X2Rpc2FibGVfZHAoc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsCj4gICAJCQkJIHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+
ICAgCQkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCj4g
QEAgLTM3Miw5ICszODIsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tc3RfZGlzYWJsZV9kcChzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiAgIAlpZiAocmV0KSB7Cj4gICAJCWRybV9k
Ymdfa21zKCZpOTE1LT5kcm0sICJmYWlsZWQgdG8gdXBkYXRlIHBheWxvYWQgJWRcbiIsIHJldCk7
Cj4gICAJfQo+IC0JaWYgKG9sZF9jcnRjX3N0YXRlLT5oYXNfYXVkaW8pCj4gLQkJaW50ZWxfYXVk
aW9fY29kZWNfZGlzYWJsZShlbmNvZGVyLAo+IC0JCQkJCSAgb2xkX2NydGNfc3RhdGUsIG9sZF9j
b25uX3N0YXRlKTsKPiAgIH0KPiAgIAo+ICAgc3RhdGljIHZvaWQgaW50ZWxfbXN0X3Bvc3RfZGlz
YWJsZV9kcChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiBAQCAtOTAzLDYgKzkx
MCw3IEBAIGludGVsX2RwX2NyZWF0ZV9mYWtlX21zdF9lbmNvZGVyKHN0cnVjdCBpbnRlbF9kaWdp
dGFsX3BvcnQgKmRpZ19wb3J0LCBlbnVtIHBpcGUKPiAgIAo+ICAgCWludGVsX2VuY29kZXItPmNv
bXB1dGVfY29uZmlnID0gaW50ZWxfZHBfbXN0X2NvbXB1dGVfY29uZmlnOwo+ICAgCWludGVsX2Vu
Y29kZXItPmNvbXB1dGVfY29uZmlnX2xhdGUgPSBpbnRlbF9kcF9tc3RfY29tcHV0ZV9jb25maWdf
bGF0ZTsKPiArCWludGVsX2VuY29kZXItPnByZV9kaXNhYmxlID0gaW50ZWxfbXN0X3ByZV9kaXNh
YmxlX2RwOwo+ICAgCWludGVsX2VuY29kZXItPmRpc2FibGUgPSBpbnRlbF9tc3RfZGlzYWJsZV9k
cDsKPiAgIAlpbnRlbF9lbmNvZGVyLT5wb3N0X2Rpc2FibGUgPSBpbnRlbF9tc3RfcG9zdF9kaXNh
YmxlX2RwOwo+ICAgCWludGVsX2VuY29kZXItPnVwZGF0ZV9waXBlID0gaW50ZWxfZGRpX3VwZGF0
ZV9waXBlOwo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
