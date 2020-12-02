Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1DB2CB406
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 05:47:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B8866E9A6;
	Wed,  2 Dec 2020 04:47:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-eopbgr680045.outbound.protection.outlook.com [40.107.68.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20CE26E9A6
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 04:47:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NW1MqWBBngyPJbs+L1sBfU+K8v5Dj2tF+MBqEio7kdNqXqeBuP6vV7hvxLNSCwabiucWtn+igyMItwE38uLOddbStO7vifFCF2kH9vAV7v1RNtdelgOQIBJKNeTT19jCAb7OJZMrBAWgaFfk1JTI0QR+kcjZiwj3d06m2NlSPPfGNvMuitO8eFrBlub1TTSl10NKX+QY+vU6uS6hRhdIolIUb+1k+zlTJNvXCXFu1DivHiaw9KVxikNdgsEOh2JkvxpTOA9i35jxC2l+1CVCpO4EiHi6YGmCSmUXH7ftke6zLRJKgE+JRok2k2iHeP6wb9ZzivEUAWe4QBiqnG0tEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DQcno4VDdvlBReoyXygHEwX4Q7KpT3PrhcVpnhIRBcA=;
 b=W5lYoW2nY8orKiQIZ5mC+lNHUvsk/BaRLpeh9IQoqWLJ3Hm2RGCvFJuo17fPPlDOMTZxAvrLXX988vnwmAqiwxvZWNpCjSPjz34FlLEH28FoIzI5Pr1ZebNZX7JNa9mzdjvI62eB56inGTRXIXPBobqFXHADipIfy/385cm7uIzaNB5pTtXAyqTqi+YIkR51dsSj+oGyNR0Lo/szsGI9oMjrfBKfdLXPorxkc3ZHFZxzHxQOVB+Rh7MccExrWn6yuoEif/DSO5JGbMXM5LPKsQlhtW1nlS7rbDa694LhmMS+WKrg63FnA3TVAh3GwsU0cskx/of8rGMu4PxYVb8qKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DQcno4VDdvlBReoyXygHEwX4Q7KpT3PrhcVpnhIRBcA=;
 b=gyZovrJN8lfYgEToBMesX2m5m3b5VNi70YdqrOdFClJQXApfxghHn8Ez8Eqaqt/kTtbyC2EgYN98IRHeroyA9VJ3jeD59GhNCp+9J283IaQBpJo6tLqi9LehPMe/tNCRqCsTfTGz/Uprdjd2OD4yu7UYf1o0K9ZgppZaUBbP1ME=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB3126.namprd12.prod.outlook.com (2603:10b6:a03:df::28)
 by BYAPR12MB3510.namprd12.prod.outlook.com (2603:10b6:a03:13a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.21; Wed, 2 Dec
 2020 04:47:47 +0000
Received: from BYAPR12MB3126.namprd12.prod.outlook.com
 ([fe80::45a1:6d50:60d6:9d68]) by BYAPR12MB3126.namprd12.prod.outlook.com
 ([fe80::45a1:6d50:60d6:9d68%7]) with mapi id 15.20.3632.017; Wed, 2 Dec 2020
 04:47:47 +0000
To: "Shankar, Uma" <uma.shankar@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20201126210314.7882-1-uma.shankar@intel.com>
 <20201126210314.7882-16-uma.shankar@intel.com>
 <056dbfca-53ae-570f-0cc9-09c34a0dbb77@amd.com>
 <5c46d4b766f04eda89d5731e67a7a744@intel.com>
From: Shashank Sharma <shashank.sharma@amd.com>
Message-ID: <4729b913-5584-2e28-1e8b-b0d6228ed3bd@amd.com>
Date: Wed, 2 Dec 2020 10:17:37 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
In-Reply-To: <5c46d4b766f04eda89d5731e67a7a744@intel.com>
Content-Language: en-US
X-Originating-IP: [106.51.110.193]
X-ClientProxiedBy: MAXPR0101CA0054.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:e::16) To BYAPR12MB3126.namprd12.prod.outlook.com
 (2603:10b6:a03:df::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.113] (106.51.110.193) by
 MAXPR0101CA0054.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17 via Frontend
 Transport; Wed, 2 Dec 2020 04:47:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: dfd79568-a4ea-46f3-2599-08d8967d6a70
X-MS-TrafficTypeDiagnostic: BYAPR12MB3510:
X-Microsoft-Antispam-PRVS: <BYAPR12MB3510F36E3DB314FC21A5846BF2F30@BYAPR12MB3510.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bQhyJdB6roROkAnoJcHxpOdr1PekoQWmgf1nP6LJt4B4i+EFy+mlU68KeIdSERxoNXyPkX7PmXI5Bteh1dnlU/FZpBXbHfZpG8AsVCCixNU+WXSGFGXAM8nJFPkFlOOCsj7i9wZXYx7uRObBfQfTJLF/0XlfEs2AoojAZtwGsc0HK/aMf4boppjG14t9f5TpiGiv3L7f8ARwlGDzUaE/oY/o8iF/l5oKPXnf1c17xylZSmckVD847hYkF7VYvfQ4LKBP0tnT40tVlF8akQ9crEoZaR6nrsGTLhiljoWbs+xo2Sjem9tgswySBKMt2hUoblcs41r+3b1l94mDaYKEjHAVUuPIGQjG461vuJpG6vNcS3XfaRj5fXPf/9Z4vEE4wZsq1GUlGt+P7dc70V12nkE9FViHGZZJPzDbyF2K+3Q5E+AR3to2Q9N8ABDcDTLf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB3126.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(39860400002)(136003)(346002)(396003)(31696002)(478600001)(66476007)(66556008)(16576012)(44832011)(2906002)(8936002)(83380400001)(86362001)(66946007)(110136005)(966005)(316002)(31686004)(45080400002)(186003)(36756003)(16526019)(1006002)(6486002)(6666004)(956004)(53546011)(2616005)(5660300002)(55236004)(8676002)(26005)(52116002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?MVhod3N5NWZ4UFNIeHNpTWZMU1ZBRHlNUUpDTHFLMnJoMFYvMFQ2TGRUR24r?=
 =?utf-8?B?NTBoUlNQWGNLaDZvTExDRzZCUlRUcG96MmJnK1UvZU1YUVRwNVBHRUhobktX?=
 =?utf-8?B?NDlqY2NkVitrd3hGbmNJMUk0dmQzdEJhWElrRGljTkg2YVBnTFJXUHhMNlZk?=
 =?utf-8?B?OE9oOGErRGtPOWEwaWpGMUNUamxRdTlXd1djRlF0VURhbWM5WG1XWFR6VVZw?=
 =?utf-8?B?bmw5ck9zUSswbjZBbE9XT21BSHFXK3RIeG1DbmhGTjNoM2JOSzkrZWM5ZVYy?=
 =?utf-8?B?SU1IdTgxNjJtWEVvaGVWT2VZQnlnc1hZNHJvdW0zRzkrOEhPQUFocHdVZmdL?=
 =?utf-8?B?VE5LcE1QZHNkcVNUUUlhdmVqUlJaU1VzWjBib0FWajdnRTNVRGx5M2lGYXlj?=
 =?utf-8?B?Z0VNV1BEVkZHek51RkZVemZrcWJ0R2RqMDRRWWU0ZVBKMWloNEFhTVZOUDVs?=
 =?utf-8?B?MWtwREJDMld6RDc3OXYrMnlmenljTVEvTlZDdVFZdDJvU3kxRmlibTVkUWhS?=
 =?utf-8?B?cXhHUWtYK2VYY1ZqRHE2a2Q4Vlg1eXdRR0JXQU1pOXdLcDFqNk9EdXd4eDZT?=
 =?utf-8?B?Q3VyN241STRUbHQ3SUFuRVdtMDF0elJRYnRZUjRXc01DaEhCcStUWDJ5WEpX?=
 =?utf-8?B?L29jRmhRK1Vic2pXVmJ4L2h5VWZJK0tjaWc5bWFHbGRIK1hQeUk1WnlXaWVl?=
 =?utf-8?B?QUNMcEZVK1kwdy9yaXp3OXNFUnNXTHNNcmVKdVZISnVERHJGYkxIdndic29w?=
 =?utf-8?B?L3JDWXFMY3lhNjZwU2NJTUVaU2ZqVVNwRzZvaElSTHBHVGlaU3RGaW43NXNZ?=
 =?utf-8?B?UEV3NnQ1eTZUUkNjS0JBV2hmSm5sWDdGcWpjNElrK2ZtQ2o5TkNoMTRHSDZI?=
 =?utf-8?B?MUNMeDhZK0tXSDRlM3JQU0tqc2FRYjQveHlhQXd4dmZIVGlkaThUZkFQNW5K?=
 =?utf-8?B?dmlPZzFKK0l2RWRLT1pWckpXL0JWbnh5czZ3VzlNdDhQMDgrUnZyMlRNTzRB?=
 =?utf-8?B?N29GMXptRE0xSitGa1huQTdEVEVwT1JUVG5pK2ZZTHRGalVMUDR1R2RqeDNv?=
 =?utf-8?B?THRnMVFDNWMza1ZYVzE4bjI5WEI5QWp0M01RS2cwSmZTYUx3cmRoWldNaE1P?=
 =?utf-8?B?bHpCUkJvRWlBSlJic0dSQ0FWa21zZys5eG1iSWp6Z0sra3p4czJSWi81S21M?=
 =?utf-8?B?c0ZxTG11SUc5NVM1ckFpMzU0NjhBMWRKTk5LMVFGTUdpamx4MlBoRHQzUDlK?=
 =?utf-8?B?VUNBN0NDbTVhVFlsMit4eUJ0bkFnd2ptU0NPYkJFUVR4NkEwdWNaR3dHaERq?=
 =?utf-8?Q?/+77fub6sBe0p860I/Tjm27zwE8P1jQd+Y?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfd79568-a4ea-46f3-2599-08d8967d6a70
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3126.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2020 04:47:47.4697 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dvzIqD508kMDwJTNe0rOH+Px4Hw/vsNRJuorhxT0fkkcRuu563Jj3BARuvKMhKEeTmEvmG710xCYKaqyCrnh6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3510
Subject: Re: [Intel-gfx] [v12 15/15] drm/i915/display: [NOT FOR MERGE]
 Reduce blanking to support 4k60@10bpp for LSPCON
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAyLzEyLzIwIDI6MTcgYW0sIFNoYW5rYXIsIFVtYSB3cm90ZToKPgo+PiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFNoYXNoYW5rCj4+IFNoYXJtYQo+PiBT
ZW50OiBNb25kYXksIE5vdmVtYmVyIDMwLCAyMDIwIDQ6NDMgUE0KPj4gVG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFt2MTIgMTUv
MTVdIGRybS9pOTE1L2Rpc3BsYXk6IFtOT1QgRk9SIE1FUkdFXSBSZWR1Y2UKPj4gYmxhbmtpbmcg
dG8gc3VwcG9ydCA0azYwQDEwYnBwIGZvciBMU1BDT04KPj4KPj4gSGVsbG8gVW1hLAo+Pgo+PiBU
aGlzIGV4cGVjdGF0aW9ucyBmcm9tIHVzZXItc3BhY2Ugb2YgaGF2aW5nIHRvIGFkanVzdCB0aGUg
dGltaW5ncyBvZiB2aWRlbyBtb2RlCj4+IGRvZXNuJ3Qgc2VlbSBsaWtlIGEgZ29vZCBpZGVhIHRv
IG1lLgo+Pgo+PiBUaGlzIHNlZW1zIG1vcmUgbGlrZSBhIHF1aXJrLCBhbmQgaXQgc2hvdWxkIGJl
IGJldHRlciBrZXB0IGluIEk5MTUgbGF5ZXIgaXRzZWxmLgo+Pgo+Pgo+PiBFbHNlLCBpdCB3aWxs
IGVuZm9yY2UgdXNlciBzcGFjZSB0byB3cml0ZSBhIGxvdCBvZiB2ZW5kb3Igc3BlY2lmaWMgY29k
ZSwgbGlrZToKPj4KPj4gLSBJcyBpdCBJbnRlbCBkZXZpY2UgPwo+Pgo+PiAtIElzIGl0IEdFTjkg
Pwo+Pgo+PiAtIElzIGl0IEdlbjkgKyBMU1BDT04gPwo+Pgo+PiAtIEFyZSB3ZSBwbGFubmluZyBm
b3IgYSBIRFIgcGxheWJhY2sgPwo+Pgo+PiB3aGljaCBpcyBub3Qgd2hhdCBtb3N0IG9mIHRoZSBj
b21wb3NpdG9ycyBkZXZlbG9wZXJzIHdvdWxkIGJlIGludGVyZXN0ZWQgaW4uCj4+Cj4+Cj4+IEkg
d2FzIHRhbGtpbmcgdG8gc29tZSBvZiB0aGUgS29kaSBmb2xrcyBhbmQgdGhleSBhbHNvIHNlZW0g
dG8gdGhpbmsgdGhhdCBpdCBzaG91bGQKPj4gZ28gaW4gZHJpdmVyLgo+Pgo+PiBBbnkgcmVhc29u
IHdoeSBjYW4ndCB3ZSBhZGQgdGhpcyBjb2RlIGluIGVuY29kZXItPmNvbXB1dGVfY29uZmlnKCkg
b3IKPj4gbW9kZV9maXh1cCgpID8KPj4KPj4gY29tcHV0ZV9jb25maWcoKSB3aWxsIGhhdmUgYWxs
IHRoZSBpbmZvcm1hdGlvbiBhYm92ZSByZXF1aXJlZCwgYXMgdGhpcyBtaWdodCBiZQo+PiByZXF1
aXJlZCBmb3IgZnV0dXJlIExTUENPTiBiYXNlZCBkZXZpY2VzIGFzIHdlbGwuCj4gSGkgU2hhc2hh
bmssCj4gTXkgaW5pdGlhbCBpZGVhIHdhcyB0byBoYXZlIGl0IGluc2lkZSBrZXJuZWwgaXRzZWxm
LiBCdXQgdGhpcyBhY3R1YWxseSB0d2Vha3MgdGhlIGRpc3BsYXkgdGltaW5nIGZyb20gdGhlIHN0
YW5kYXJkIG9uZQo+IHdoYXQgc2luayBoYXMgZ2l2ZW4sIHNvIFZpbGxlJ3Mgc3VnZ2VzdGlvbiB3
YXMgdG8ga2VlcCB0aGlzIG91dCBmcm9tIGtlcm5lbCwgYW5kIGxldCB1c2Vyc3BhY2UgY29tcG9u
ZW50cwo+IGZvcmNlIHRoZSBhZGp1c3RlZCB0aW1pbmdzLgoKSUlSQywgd2UgY2FuIGhhbmRsZSB0
aGlzIHNpdHVhdGlvbiBzb21ldGhpbmcgbGlrZSB0aGlzOgoKLSBBbGxvdyB0aGUgbW9kZSB0byBi
ZSBpbiBtb2RlbGlzdAoKLSBPbiBHRU45ICsgTFNQQ09OIGR1cmluZyBub3JtYWwgbW9kZXNldAoK
wqDCoMKgIC0gTmV2ZXIgcGljayAxMC1iaXQgZGVwdGggZm9yIDRrQDYwIG1vZGVzIChJIHRoaW5r
IG5vIGNoYW5nZXMgcmVxdWlyZWQgaGVyZSkKCi0gT24gR0VOOSArIExTUENPTiBkdXJpbmcgSERS
IHBsYXliYWNrIChjaGVjayBIRFIgbWV0YWRhdGEpCgrCoMKgwqAgLcKgIHByb2R1Y2UgdGhlIHJl
cXVpcmVkIHRpbWluZyBhbmQgc2F2ZSBpdCBhcyAiYWRqdXN0ZWRfbW9kZSIgZHVyaW5nIHRoZSBl
bmNvZGVyLT5jb21wdXRlX2NvbmZpZygpCgoKUmVnYXJkcwoKU2hhc2hhbmsKCj4KPiBUaGlzIGlz
IG1vcmUgb2YgYSBsaW1pdGF0aW9uIGNvbWluZyBmcm9tIERQIHNwZWMgd3J0IEhCUjIgYmFuZHdp
ZHRocy4KPgo+IEB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbSBXaGF0IGRvIHlvdSBzdWdn
ZXN0LiBJIGhhdmUgbWVyZ2VkIHRoZSBjaGFuZ2VzIGxlYXZpbmcgdGhpcyBwYXRjaCBvdXQgYXMg
b2YKPiBub3cuCj4KPiBCYXNlZCBvbiByZWNvbW1lbmRhdGlvbiwgSSBjYW4gcmUtd29yayB0aGlz
IGFuZCBtZXJnZSBpZiB3ZSBhbGwgYXJlIGFsaWduZWQgb24gdGhpcyBvbmUuCj4KPiBUaGFua3Mg
JiBSZWdhcmRzLAo+IFVtYSBTaGFua2FyCj4KPj4gUmVnYXJkcwo+Pgo+PiBTaGFzaGFuawo+Pgo+
PiBPbiAyNy8xMS8yMCAyOjMzIGFtLCBVbWEgU2hhbmthciB3cm90ZToKPj4+IEJsYW5raW5nIG5l
ZWRzIHRvIGJlIHJlZHVjZWQgdG8gaW5jb3Jwb3JhdGUgRFAgYW5kIEhETUkgdGltaW5nL2xpbmsK
Pj4+IGJhbmR3aWR0aCBsaW1pdGF0aW9ucyBmb3IgQ0VBIG1vZGVzICg0a0A2MCBhdCAxMCBicHAp
LiBEUCBjYW4gZHJpdmUKPj4+IDE3LjI4R2JzIHdoaWxlIDRrIG1vZGVzIChWSUM5NyBldGMpIGF0
IDEwIGJwcCByZXF1aXJlZCAxNy44IEdicHMuCj4+PiBUaGlzIHdpbGwgY2F1c2UgbW9kZSB0byBi
bGFuayBvdXQuIFJlZHVjZWQgSHRvdGFsIGJ5IHNob3J0ZW5pbmcgdGhlCj4+PiBiYWNrIHBvcmNo
IGFuZCBmcm9udCBwb3JjaCB3aXRoaW4gcGVybWlzc2libGUgbGltaXRzLgo+Pj4KPj4+IE5vdGU6
IFRoaXMgaXMgZm9yIHJlZmVyZW5jZSBmb3IgdXNlcnNwYWNlLCBub3QgdG8gYmUgbWVyZ2VkIGlu
IGtlcm5lbC4KPj4+Cj4+PiB2MjogVGhpcyBpcyBtYXJrZWQgYXMgTm90IGZvciBtZXJnZSBhbmQg
dGhlIHJlc3BvbnNpYmlsdHkgdG8gcHJvZ3JhbQo+Pj4gdGhlc2UgY3VzdG9tIHRpbWluZ3Mgd2ls
bCBiZSBvbiB1c2Vyc3BhY2UuIFRoaXMgcGF0Y2ggaXMganVzdCBmb3IKPj4+IHJlZmVyZW5jZSBw
dXJwb3Nlcy4gVGhpcyBpcyBiYXNlZCBvbiBWaWxsZSdzIHJlY29tbWVuZGF0aW9uLgo+Pj4KPj4+
IHYzOiB1cGRhdGVkIGNvbW1pdCBtZXNzYWdlLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFVtYSBT
aGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Cj4+PiAtLS0KPj4+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAxNyArKysrKysrKysrKysrKysrKwo+Pj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+Pj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPj4+IGluZGV4IDBmODlkYmZhOTU4YS4uZjZmNjYwMzMx
NzZiIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPj4+
IEBAIC03NDEsOCArNzQxLDEwIEBAIGludGVsX2RwX21vZGVfdmFsaWQoc3RydWN0IGRybV9jb25u
ZWN0b3IKPj4+ICpjb25uZWN0b3IsICB7Cj4+PiAgCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAg
PQo+PiBpbnRlbF9hdHRhY2hlZF9kcCh0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKSk7Cj4+
PiAgCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmludGVsX2Nvbm5lY3RvciA9Cj4+PiB0b19pbnRl
bF9jb25uZWN0b3IoY29ubmVjdG9yKTsKPj4+ICsJc3RydWN0IGludGVsX2VuY29kZXIgKmludGVs
X2VuY29kZXIgPQo+Pj4gK2ludGVsX2F0dGFjaGVkX2VuY29kZXIoaW50ZWxfY29ubmVjdG9yKTsK
Pj4+ICAJc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmZpeGVkX21vZGUgPSBpbnRlbF9jb25uZWN0
b3ItCj4+PiBwYW5lbC5maXhlZF9tb2RlOwo+Pj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KGNvbm5lY3Rvci0+ZGV2KTsKPj4+ICsJc3RydWN0IGludGVsX2xz
cGNvbiAqbHNwY29uID0gZW5jX3RvX2ludGVsX2xzcGNvbihpbnRlbF9lbmNvZGVyKTsKPj4+ICAJ
aW50IHRhcmdldF9jbG9jayA9IG1vZGUtPmNsb2NrOwo+Pj4gIAlpbnQgbWF4X3JhdGUsIG1vZGVf
cmF0ZSwgbWF4X2xhbmVzLCBtYXhfbGlua19jbG9jazsKPj4+ICAJaW50IG1heF9kb3RjbGsgPSBk
ZXZfcHJpdi0+bWF4X2RvdGNsa19mcmVxOyBAQCAtNzc4LDYgKzc4MCwyMSBAQAo+Pj4gaW50ZWxf
ZHBfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAo+Pj4gIAlpZiAo
dGFyZ2V0X2Nsb2NrID4gbWF4X2RvdGNsaykKPj4+ICAJCXJldHVybiBNT0RFX0NMT0NLX0hJR0g7
Cj4+Pgo+Pj4gKwkvKgo+Pj4gKwkgKiBSZWR1Y2luZyBCbGFua2luZyB0byBpbmNvcnBvcmF0ZSBE
UCBhbmQgSERNSSB0aW1pbmcvbGluayBiYW5kd2lkdGgKPj4+ICsJICogbGltaXRhdGlvbnMgZm9y
IENFQSBtb2RlcyAoNGtANjAgYXQgMTAgYnBwKS4gRFAgY2FuIGRyaXZlIDE3LjI4R2JzCj4+PiAr
CSAqIHdoaWxlIDRrIG1vZGVzIChWSUM5NyBldGMpIGF0IDEwIGJwcCByZXF1aXJlZCAxNy44IEdi
cHMuIFRoaXMgd2lsbAo+Pj4gKwkgKiBjYXVzZSBtb2RlIHRvIGJsYW5rIG91dC4gUmVkdWNlZCBI
dG90YWwgYnkgc2hvcnRlbmluZyB0aGUgYmFjawo+PiBwb3JjaAo+Pj4gKwkgKiBhbmQgZnJvbnQg
cG9yY2ggd2l0aGluIHBlcm1pc3NpYmxlIGxpbWl0cy4KPj4+ICsJICovCj4+PiArCWlmIChsc3Bj
b24tPmFjdGl2ZSAmJiBsc3Bjb24tPmhkcl9zdXBwb3J0ZWQgJiYKPj4+ICsJICAgIG1vZGUtPmNs
b2NrID4gNTcwMDAwKSB7Cj4+PiArCQltb2RlLT5jbG9jayA9IDU3MDAwMDsKPj4+ICsJCW1vZGUt
Pmh0b3RhbCAtPSAxODA7Cj4+PiArCQltb2RlLT5oc3luY19zdGFydCAtPSA3MjsKPj4+ICsJCW1v
ZGUtPmhzeW5jX2VuZCAtPSA3MjsKPj4+ICsJfQo+Pj4gKwo+Pj4gIAltYXhfbGlua19jbG9jayA9
IGludGVsX2RwX21heF9saW5rX3JhdGUoaW50ZWxfZHApOwo+Pj4gIAltYXhfbGFuZXMgPSBpbnRl
bF9kcF9tYXhfbGFuZV9jb3VudChpbnRlbF9kcCk7Cj4+Pgo+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4+
IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gaHR0cHM6Ly9uYW0xMS5zYWZlbGlu
a3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGbGlzdHMuZnJlZWRl
c2t0b3Aub3JnJTJGbWFpbG1hbiUyRmxpc3RpbmZvJTJGaW50ZWwtZ2Z4JmFtcDtkYXRhPTA0JTdD
MDElN0NzaGFzaGFuay5zaGFybWElNDBhbWQuY29tJTdDNDdjZWZhZWFhNjdlNDBiZmUyMTEwOGQ4
OTYzYTViMTQlN0MzZGQ4OTYxZmU0ODg0ZTYwOGUxMWE4MmQ5OTRlMTgzZCU3QzAlN0MwJTdDNjM3
NDI0NTI0NjY5NTUxNzIyJTdDVW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5SldJam9pTUM0d0xqQXdN
REFpTENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFXd2lMQ0pYVkNJNk1uMCUzRCU3QzEwMDAm
YW1wO3NkYXRhPTB1eFJQM0loMUh3bnFKZ2xKVkYlMkZMMzRENEttbURaQzJNT3lQTzclMkJFMW93
JTNEJmFtcDtyZXNlcnZlZD0wCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
