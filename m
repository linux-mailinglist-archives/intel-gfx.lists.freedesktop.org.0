Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B0A14130E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 22:29:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AE5C6F92B;
	Fri, 17 Jan 2020 21:29:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2085.outbound.protection.outlook.com [40.107.243.85])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54EAB6F57C;
 Fri, 17 Jan 2020 13:51:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GpSF1/maefRfDQ06gAq4N46icW839eWvtUbXgRCueAvGzt6lR4iUbBHOg9ypybyEb6+tw0ATHlUf3r+eZ07FUl/dnszy/wQJnvf6W/NjR5SqHnrFaCEWKpCBJ9uLGMydcqpuxK0Yb4l/mlMQnlTFwS7wE4KID33QTnkwPfTCCjKjGfyp8ievat5iv+CNn4gua66hw68qBmWIz4RwT14W1Io4RO3MUd+fHnjJtXjJBJbgVSbk0lv20OlwFJOqo1T1bkzRhHnrU9uUzOkaA36xTt4hK1UHxRWdbvqP8IrplvrfhvCBlUiq5nr4fzbX0Hp5pA3H2sFEiLsxmgfpvUz4sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tC3LnTZZy8YgcOt9E1rxKIhMp5e2G5jyjRVHCZ6hekc=;
 b=ErFnFMokilklPKqgbGSCAg4+HFyyq21QZ9BgYqs8ifYGN5yzTIaTHOLwMCExy99bIh1IZgDO9RsROq+KQ+IDjZ7e4FORtXMPB4L9lYHaJsUAJfliHGDSmvoA3wdjNPjyGVG2XLe3jM8prMz4gVQt3TOFYmtJbBZxKUWMq7n8sEbGr66rlly1PW1fNOgLB7uwN0ZrYI7rTLa7xS/cuaeLl7aMczJKoiE+VGE/h8OgSEY0np2csFqKYHTwOFt0nnRGzBfYWFC9cBMS0l5B6oEFwy8SsTv+X+KUHyAjHUcsth5r0ockAXiqs/MR7CoZVCOC/xarJML3VxriZ9a7ckQIFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tC3LnTZZy8YgcOt9E1rxKIhMp5e2G5jyjRVHCZ6hekc=;
 b=D6t5uijtmawKsH6Dp9CV2Lt51/Y7RDHKo7BqYsLKlo3Kw1MVj5jKahq/EgFnjX2C6HGk6rTjx7wUqIW41/orgeQiPPmIgYbaBAd6z5FLsTNA2I7cDnOnoPoqACnbQdGLdklwUUaLSKT3IyMZRqd2K3RcDgNo9/G8vRWuajH6xqI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Mikita.Lipski@amd.com; 
Received: from DM6PR12MB2906.namprd12.prod.outlook.com (20.179.71.212) by
 DM6PR12MB3883.namprd12.prod.outlook.com (10.255.174.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23; Fri, 17 Jan 2020 13:51:46 +0000
Received: from DM6PR12MB2906.namprd12.prod.outlook.com
 ([fe80::c4f1:5ec7:7314:75bf]) by DM6PR12MB2906.namprd12.prod.outlook.com
 ([fe80::c4f1:5ec7:7314:75bf%7]) with mapi id 15.20.2644.023; Fri, 17 Jan 2020
 13:51:46 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20200117015837.402239-1-jose.souza@intel.com>
From: Mikita Lipski <mlipski@amd.com>
Organization: AMD
Message-ID: <35e7f173-41c9-8518-d50a-5385312f6ead@amd.com>
Date: Fri, 17 Jan 2020 08:51:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <20200117015837.402239-1-jose.souza@intel.com>
Content-Language: en-US
X-ClientProxiedBy: YT1PR01CA0026.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01::39)
 To DM6PR12MB2906.namprd12.prod.outlook.com
 (2603:10b6:5:15f::20)
MIME-Version: 1.0
Received: from [172.29.224.72] (165.204.55.250) by
 YT1PR01CA0026.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01::39) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19 via Frontend Transport; Fri, 17 Jan 2020 13:51:46 +0000
X-Originating-IP: [165.204.55.250]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 46421a13-2733-411f-2f76-08d79b5464ad
X-MS-TrafficTypeDiagnostic: DM6PR12MB3883:|DM6PR12MB3883:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR12MB3883A836C0DD1B0A61F2210EE4310@DM6PR12MB3883.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 0285201563
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(136003)(39860400002)(376002)(396003)(189003)(199004)(6486002)(36756003)(186003)(16526019)(2616005)(956004)(52116002)(26005)(5660300002)(2906002)(36916002)(53546011)(54906003)(8936002)(81166006)(81156014)(8676002)(16576012)(316002)(478600001)(31696002)(66556008)(31686004)(45080400002)(4326008)(66476007)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR12MB3883;
 H:DM6PR12MB2906.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NEFD0uMb+rGmOJqjc7h7MByF29sF3jU0JTrByYIVVyu0TwkK8NTr1nZjw2nGwBrYJ3NwEro8mH9KBND0A03X/R9GhgnP7IoI82mNz1zY+v6zfQekNw44FPuhbLK2lTkcpxZUizGMQS9G1YQqRkyvsyg+ysVgSeBVkwmkFKeQ2UL5P8jIr4EFcqoG96YdSzANJi6pLk6IJOgULNGbUarO3Y8MfkdxVXgwZT64kD6WCRE9K9wW7En/t7YqpwpPmQPeFPEfA6Xd4/iqGeZIEFrR525z2ocoOxkDRKdp/Poh2Lk6IjeHbLzThg90BYp0DZ/XN6rrdoW3ryUHhUkHL/MLRuVYOpy5wOJ2G62oSiiDWcukD9mb46DKLKKlUg8phbTxhj0kqJRazId3Zake8dRUikZivjM+kalmVT5FWsIePDtCzyRhEZ0oGCCD3mosCEN1
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46421a13-2733-411f-2f76-08d79b5464ad
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2020 13:51:46.6083 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lwo97bhLDDi0zQVBelafMPlT2Cm7gOdAcPB0VapSCK+O1CGvUV8TcIJQyTvJ67RF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3883
X-Mailman-Approved-At: Fri, 17 Jan 2020 21:29:09 +0000
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/mst: Don't do atomic checks over
 disabled managers
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
Cc: Alex Deucher <alexander.deucher@amd.com>,
 Mikita Lipski <mikita.lipski@amd.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhbmtzIGZvciB0aGUgY2F0Y2ghIE1ha2VzIHNlbnNlIHRvIHNraXAgZGlzYWJsZWQgbWFuYWdl
cnMgdGhlcmUsIGJ1dCBJIAp3b25kZXIgd2h5IGl0IGRpZG4ndCBjYXVzZSBhIGNyYXNoIHdpdGgg
YW1kZ3B1LiBBbnl3YXlzIGxvb2tzIGdvb2QgdG8gbWUuCgpBY2tlZC1ieTogTWlraXRhIExpcHNr
aSA8bWlraXRhLmxpcHNraUBhbWQuY29tPgoKT24gMS8xNi8yMCA4OjU4IFBNLCBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIHdyb3RlOgo+IFdoZW4gYSBtYWluIE1TVCBwb3J0IGlzIGRpc2Nvbm5lY3Rl
ZCBkcml2ZXJzIHNob3VsZCBjYWxsCj4gZHJtX2RwX21zdF90b3BvbG9neV9tZ3Jfc2V0X21zdCgp
IGRpc2FibGluZyB0aGUgTVNUIG1hbmFnZXIsIHRoaXMKPiBmdW5jdGlvbiB3aWxsIHNldCBtYW5h
Z2VyIG1zdF9wcmltYXJ5IHRvIE5VTEwgYW5kIGl0IHdpbGwgY2F1c2UgdGhlCj4gY3Jhc2ggYmVs
bG93IG9uIHRoZSBuZXh0IGF0b21pYyBjaGVjayB3aGVuIHRyeWluZyB0byBhY2Nlc3MKPiBtc3Rf
cHJpbWFyeS0+cG9ydC4KPiAKPiBBcyB0aGVyZSBpcyBubyB1c2UgaW4gcnVubmluZyBjaGVja3Mg
b3ZlciBtYW5hZ2VycyB0aGF0IGFyZSBub3QKPiBhY3RpdmUgdGhpcyBwYXRjaCB3aWxsIHNraXAg
aXQuCj4gCj4gWyAgMzA1LjYxNjQ1MF0gW2RybTpkcm1fZHBfbXN0X2F0b21pY19jaGVja10gW01T
VCBQT1JUOjAwMDAwMDAwY2MyMDQ5ZTldIHJlbGVhc2VzIGFsbCBWQ1BJIHNsb3RzCj4gWyAgMzA1
LjYyNTA4NV0gW2RybTpkcm1fZHBfbXN0X2F0b21pY19jaGVja10gW01TVCBQT1JUOjAwMDAwMDAw
MDIwYWI0M2VdIHJlbGVhc2VzIGFsbCBWQ1BJIHNsb3RzCj4gWyAgMzA1LjYzMzcyOV0gW2RybTpk
cm1fZHBfbXN0X2F0b21pY19jaGVja10gW01TVCBNR1I6MDAwMDAwMDBjZGQ0NjdkNF0gbXN0IHN0
YXRlIDAwMDAwMDAwYjY3NjcyZWIgVkNQSSBhdmFpbD02MyB1c2VkPTAKPiBbICAzMDUuNjQ0NDA1
XSBCVUc6IGtlcm5lbCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UsIGFkZHJlc3M6IDAwMDAwMDAw
MDAwMDAwMzAKPiBbICAzMDUuNjUxNDQ4XSAjUEY6IHN1cGVydmlzb3IgcmVhZCBhY2Nlc3MgaW4g
a2VybmVsIG1vZGUKPiBbICAzMDUuNjU2NjQwXSAjUEY6IGVycm9yX2NvZGUoMHgwMDAwKSAtIG5v
dC1wcmVzZW50IHBhZ2UKPiBbICAzMDUuNjYxODA3XSBQR0QgMCBQNEQgMAo+IFsgIDMwNS42NjQz
OTZdIE9vcHM6IDAwMDAgWyMxXSBQUkVFTVBUIFNNUCBOT1BUSQo+IFsgIDMwNS42Njg3ODldIENQ
VTogMyBQSUQ6IDE4MyBDb21tOiBrd29ya2VyLzM6MiBOb3QgdGFpbnRlZCA1LjUuMC1yYzYrICMx
NDA0Cj4gWyAgMzA1LjY3NTcwM10gSGFyZHdhcmUgbmFtZTogSW50ZWwgQ29ycG9yYXRpb24gSWNl
IExha2UgQ2xpZW50IFBsYXRmb3JtL0ljZUxha2UgVSBERFI0IFNPRElNTSBQRCBSVlAgVExDLCBC
SU9TIElDTFNGV1IxLlIwMC4zMjAxLkEwMC4xOTA1MTQwMzU4IDA1LzE0LzIwMTkKPiBbICAzMDUu
Njg5NDI1XSBXb3JrcXVldWU6IGV2ZW50cyBkcm1fZHBfZGVsYXllZF9kZXN0cm95X3dvcmsKPiBb
ICAzMDUuNjk0ODc0XSBSSVA6IDAwMTA6ZHJtX2RwX21zdF9hdG9taWNfY2hlY2srMHgxMzgvMHgy
YzAKPiBbICAzMDUuNzAwMzA2XSBDb2RlOiAwMCAwMCAwMCA0MSAyOSBkOSA0MSA4OSBkOCA0YyA4
OSBmYSA0YyA4OSBmMSA0OCBjNyBjNiBiMCBiMSAzNCA4MiBiZiAxMCAwMCAwMCAwMCA0NSAzMSBl
ZCBlOCAzZiA5OSAwMiAwMCA0ZCA4YiBiZiA4MCAwNCAwMCAwMCA8NDk+IDhiIDQ3IDMwIDQ5IDhk
IDVmIDMwIDRjIDhkIDYwIGU4IDQ4IDM5IGMzIDc0IDM1IDQ5IDhiIDdjIDI0IDI4Cj4gWyAgMzA1
LjcxOTE2OV0gUlNQOiAwMDE4OmZmZmZjOTAwMDE2ODdiNTggRUZMQUdTOiAwMDAxMDI0Ngo+IFsg
IDMwNS43MjQ0MzRdIFJBWDogMDAwMDAwMDAwMDAwMDAwMCBSQlg6IDAwMDAwMDAwMDAwMDAwM2Yg
UkNYOiAwMDAwMDAwMDAwMDAwMDAwCj4gWyAgMzA1LjczMTYxMV0gUkRYOiAwMDAwMDAwMDAwMDAw
MDAwIFJTSTogZmZmZjg4ODQ5ZmJhOGNiOCBSREk6IDAwMDAwMDAwZmZmZmZmZmYKPiBbICAzMDUu
NzM4Nzg1XSBSQlA6IDAwMDAwMDAwMDAwMDAwMDAgUjA4OiAwMDAwMDAwMDAwMDAwMDAwIFIwOTog
MDAwMDAwMDAwMDAwMDAwMQo+IFsgIDMwNS43NDU5NjJdIFIxMDogZmZmZmM5MDAwMTY4NzlhMCBS
MTE6IGZmZmZjOTAwMDE2ODc5YTUgUjEyOiAwMDAwMDAwMDAwMDAwMDAwCj4gWyAgMzA1Ljc1MzEz
OV0gUjEzOiAwMDAwMDAwMDAwMDAwMDAwIFIxNDogZmZmZjg4ODQ5MDVjOWJjMCBSMTU6IDAwMDAw
MDAwMDAwMDAwMDAKPiBbICAzMDUuNzYwMzE1XSBGUzogIDAwMDAwMDAwMDAwMDAwMDAoMDAwMCkg
R1M6ZmZmZjg4ODQ5ZmI4MDAwMCgwMDAwKSBrbmxHUzowMDAwMDAwMDAwMDAwMDAwCj4gWyAgMzA1
Ljc2ODQ1Ml0gQ1M6ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAz
Mwo+IFsgIDMwNS43NzQyNjNdIENSMjogMDAwMDAwMDAwMDAwMDAzMCBDUjM6IDAwMDAwMDAwMDU2
MTAwMDYgQ1I0OiAwMDAwMDAwMDAwNzYwZWUwCj4gWyAgMzA1Ljc4MTQ0MV0gUEtSVTogNTU1NTU1
NTQKPiBbICAzMDUuNzg0MjI4XSBDYWxsIFRyYWNlOgo+IFsgIDMwNS43ODY3MzldICBpbnRlbF9h
dG9taWNfY2hlY2srMHhiMmUvMHgyNTYwIFtpOTE1XQo+IFsgIDMwNS43OTE2NzhdICA/IHByaW50
aysweDUzLzB4NmEKPiBbICAzMDUuNzk0ODU2XSAgPyBkcm1fYXRvbWljX2NoZWNrX29ubHkrMHgz
ZS8weDgxMAo+IFsgIDMwNS43OTk0MTddICA/IF9fZHJtX2RiZysweDgyLzB4OTAKPiBbICAzMDUu
ODAyODQ4XSAgZHJtX2F0b21pY19jaGVja19vbmx5KzB4NTZhLzB4ODEwCj4gWyAgMzA1LjgwNzMy
Ml0gIGRybV9hdG9taWNfY29tbWl0KzB4ZS8weDUwCj4gWyAgMzA1LjgxMTE4NV0gIGRybV9jbGll
bnRfbW9kZXNldF9jb21taXRfYXRvbWljKzB4MWUyLzB4MjUwCj4gWyAgMzA1LjgxNjYxOV0gIGRy
bV9jbGllbnRfbW9kZXNldF9jb21taXRfZm9yY2UrMHg0ZC8weDE4MAo+IFsgIDMwNS44MjE5MjFd
ICBkcm1fZmJfaGVscGVyX3Jlc3RvcmVfZmJkZXZfbW9kZV91bmxvY2tlZCsweDQ2LzB4YTAKPiBb
ICAzMDUuODI3OTYzXSAgZHJtX2ZiX2hlbHBlcl9zZXRfcGFyKzB4MmIvMHg0MAo+IFsgIDMwNS44
MzIyNjVdICBkcm1fZmJfaGVscGVyX2hvdHBsdWdfZXZlbnQucGFydC4wKzB4YjIvMHhkMAo+IFsg
IDMwNS44Mzc3NTVdICBkcm1fa21zX2hlbHBlcl9ob3RwbHVnX2V2ZW50KzB4MjEvMHgzMAo+IFsg
IDMwNS44NDI2OTRdICBwcm9jZXNzX29uZV93b3JrKzB4MjViLzB4NWIwCj4gWyAgMzA1Ljg0Njcz
NV0gIHdvcmtlcl90aHJlYWQrMHg0Yi8weDNiMAo+IFsgIDMwNS44NTA0MzldICBrdGhyZWFkKzB4
MTAwLzB4MTQwCj4gWyAgMzA1Ljg1MzY5MF0gID8gcHJvY2Vzc19vbmVfd29yaysweDViMC8weDVi
MAo+IFsgIDMwNS44NTc5MDFdICA/IGt0aHJlYWRfcGFyaysweDgwLzB4ODAKPiBbICAzMDUuODYx
NTg4XSAgcmV0X2Zyb21fZm9yaysweDI0LzB4NTAKPiBbICAzMDUuODY1MjAyXSBNb2R1bGVzIGxp
bmtlZCBpbjogc25kX2hkYV9jb2RlY19oZG1pIHNuZF9oZGFfY29kZWNfcmVhbHRlayBzbmRfaGRh
X2NvZGVjX2dlbmVyaWMgaTkxNSBidHVzYiBidHJ0bCBidGJjbSBidGludGVsIGJsdWV0b290aCBw
cmltZV9udW1iZXJzIHNuZF9oZGFfaW50ZWwgc25kX2ludGVsX2RzcGNmZyBzbmRfaGRhX2NvZGVj
IGUxMDAwZSBzbmRfaHdkZXAgc25kX2hkYV9jb3JlIHRodW5kZXJib2x0IG1laV9oZGNwIG1laV9t
ZSBhc2l4IGNkY19ldGhlciB4ODZfcGtnX3RlbXBfdGhlcm1hbCByODE1MiBtZWkgY29yZXRlbXAg
dXNibmV0IHNuZF9wY20gbWlpIGNyY3QxMGRpZl9wY2xtdWwgcHRwIGNyYzMyX3BjbG11bCBlY2Ro
X2dlbmVyaWMgZ2hhc2hfY2xtdWxuaV9pbnRlbCBwcHNfY29yZSBlY2MgaTJjX2k4MDEgaW50ZWxf
bHBzc19wY2kKPiBbICAzMDUuOTAzMDk2XSBDUjI6IDAwMDAwMDAwMDAwMDAwMzAKPiBbICAzMDUu
OTA2NDMxXSAtLS1bIGVuZCB0cmFjZSA3MGVlMzY0ZWVkODAxY2IwIF0tLS0KPiBbICAzMDUuOTQw
ODE2XSBSSVA6IDAwMTA6ZHJtX2RwX21zdF9hdG9taWNfY2hlY2srMHgxMzgvMHgyYzAKPiBbICAz
MDUuOTQ2MjYxXSBDb2RlOiAwMCAwMCAwMCA0MSAyOSBkOSA0MSA4OSBkOCA0YyA4OSBmYSA0YyA4
OSBmMSA0OCBjNyBjNiBiMCBiMSAzNCA4MiBiZiAxMCAwMCAwMCAwMCA0NSAzMSBlZCBlOCAzZiA5
OSAwMiAwMCA0ZCA4YiBiZiA4MCAwNCAwMCAwMCA8NDk+IDhiIDQ3IDMwIDQ5IDhkIDVmIDMwIDRj
IDhkIDYwIGU4IDQ4IDM5IGMzIDc0IDM1IDQ5IDhiIDdjIDI0IDI4Cj4gWyAgMzA1Ljk2NTEyNV0g
UlNQOiAwMDE4OmZmZmZjOTAwMDE2ODdiNTggRUZMQUdTOiAwMDAxMDI0Ngo+IFsgIDMwNS45NzAz
ODJdIFJBWDogMDAwMDAwMDAwMDAwMDAwMCBSQlg6IDAwMDAwMDAwMDAwMDAwM2YgUkNYOiAwMDAw
MDAwMDAwMDAwMDAwCj4gWyAgMzA1Ljk3NzU3MV0gUkRYOiAwMDAwMDAwMDAwMDAwMDAwIFJTSTog
ZmZmZjg4ODQ5ZmJhOGNiOCBSREk6IDAwMDAwMDAwZmZmZmZmZmYKPiBbICAzMDUuOTg0NzQ3XSBS
QlA6IDAwMDAwMDAwMDAwMDAwMDAgUjA4OiAwMDAwMDAwMDAwMDAwMDAwIFIwOTogMDAwMDAwMDAw
MDAwMDAwMQo+IFsgIDMwNS45OTE5MjFdIFIxMDogZmZmZmM5MDAwMTY4NzlhMCBSMTE6IGZmZmZj
OTAwMDE2ODc5YTUgUjEyOiAwMDAwMDAwMDAwMDAwMDAwCj4gWyAgMzA1Ljk5OTA5OV0gUjEzOiAw
MDAwMDAwMDAwMDAwMDAwIFIxNDogZmZmZjg4ODQ5MDVjOWJjMCBSMTU6IDAwMDAwMDAwMDAwMDAw
MDAKPiBbICAzMDYuMDA2MjcxXSBGUzogIDAwMDAwMDAwMDAwMDAwMDAoMDAwMCkgR1M6ZmZmZjg4
ODQ5ZmI4MDAwMCgwMDAwKSBrbmxHUzowMDAwMDAwMDAwMDAwMDAwCj4gWyAgMzA2LjAxNDQwN10g
Q1M6ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMwo+IFsgIDMw
Ni4wMjAxODVdIENSMjogMDAwMDAwMDAwMDAwMDAzMCBDUjM6IDAwMDAwMDA0OGIzYWEwMDMgQ1I0
OiAwMDAwMDAwMDAwNzYwZWUwCj4gWyAgMzA2LjAyNzQwNF0gUEtSVTogNTU1NTU1NTQKPiBbICAz
MDYuMDMwMTI3XSBCVUc6IHNsZWVwaW5nIGZ1bmN0aW9uIGNhbGxlZCBmcm9tIGludmFsaWQgY29u
dGV4dCBhdCBpbmNsdWRlL2xpbnV4L3BlcmNwdS1yd3NlbS5oOjM4Cj4gWyAgMzA2LjAzOTA0OV0g
aW5fYXRvbWljKCk6IDAsIGlycXNfZGlzYWJsZWQoKTogMSwgbm9uX2Jsb2NrOiAwLCBwaWQ6IDE4
MywgbmFtZToga3dvcmtlci8zOjIKPiBbICAzMDYuMDQ3MjcyXSBJTkZPOiBsb2NrZGVwIGlzIHR1
cm5lZCBvZmYuCj4gWyAgMzA2LjA1MTIxN10gaXJxIGV2ZW50IHN0YW1wOiA3NzUwNQo+IFsgIDMw
Ni4wNTQ2NDddIGhhcmRpcnFzIGxhc3QgIGVuYWJsZWQgYXQgKDc3NTA1KTogWzxmZmZmZmZmZjgx
YTBjMTQ3Pl0gX3Jhd19zcGluX3VubG9ja19pcnFyZXN0b3JlKzB4NDcvMHg2MAo+IFsgIDMwNi4w
NjQyNzBdIGhhcmRpcnFzIGxhc3QgZGlzYWJsZWQgYXQgKDc3NTA0KTogWzxmZmZmZmZmZjgxYTBi
ZWRmPl0gX3Jhd19zcGluX2xvY2tfaXJxc2F2ZSsweGYvMHg1MAo+IFsgIDMwNi4wNzM0MDRdIHNv
ZnRpcnFzIGxhc3QgIGVuYWJsZWQgYXQgKDc3NDAyKTogWzxmZmZmZmZmZjgxZTAwMzg5Pl0gX19k
b19zb2Z0aXJxKzB4Mzg5LzB4NDdmCj4gWyAgMzA2LjA4MTg4NV0gc29mdGlycXMgbGFzdCBkaXNh
YmxlZCBhdCAoNzczOTUpOiBbPGZmZmZmZmZmODEwYjgzYTk+XSBpcnFfZXhpdCsweGE5LzB4YzAK
PiBbICAzMDYuMDg5ODU5XSBDUFU6IDMgUElEOiAxODMgQ29tbToga3dvcmtlci8zOjIgVGFpbnRl
ZDogRyAgICAgIEQgICAgICAgICAgIDUuNS4wLXJjNisgIzE0MDQKPiBbICAzMDYuMDk4MTY3XSBI
YXJkd2FyZSBuYW1lOiBJbnRlbCBDb3Jwb3JhdGlvbiBJY2UgTGFrZSBDbGllbnQgUGxhdGZvcm0v
SWNlTGFrZSBVIEREUjQgU09ESU1NIFBEIFJWUCBUTEMsIEJJT1MgSUNMU0ZXUjEuUjAwLjMyMDEu
QTAwLjE5MDUxNDAzNTggMDUvMTQvMjAxOQo+IFsgIDMwNi4xMTE4ODJdIFdvcmtxdWV1ZTogZXZl
bnRzIGRybV9kcF9kZWxheWVkX2Rlc3Ryb3lfd29yawo+IFsgIDMwNi4xMTczMTRdIENhbGwgVHJh
Y2U6Cj4gWyAgMzA2LjExOTc4MF0gIGR1bXBfc3RhY2srMHg3MS8weGEwCj4gWyAgMzA2LjEyMzEz
NV0gIF9fX21pZ2h0X3NsZWVwLmNvbGQrMHhmNy8weDEwYgo+IFsgIDMwNi4xMjczOTldICBleGl0
X3NpZ25hbHMrMHgyYi8weDM2MAo+IFsgIDMwNi4xMzEwMTRdICBkb19leGl0KzB4YTcvMHhjNzAK
PiBbICAzMDYuMTM0MTg5XSAgPyBrdGhyZWFkKzB4MTAwLzB4MTQwCj4gWyAgMzA2LjEzNzYxNV0g
IHJld2luZF9zdGFja19kb19leGl0KzB4MTcvMHgyMAo+IAo+IEZpeGVzOiBjZDgyZDgyY2JjMDQg
KCJkcm0vZHBfbXN0OiBBZGQgYnJhbmNoIGJhbmR3aWR0aCB2YWxpZGF0aW9uIHRvIE1TVCBhdG9t
aWMgY2hlY2siKQo+IENjOiBNaWtpdGEgTGlwc2tpIDxtaWtpdGEubGlwc2tpQGFtZC5jb20+Cj4g
Q2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KPiBDYzogTHl1ZGUg
UGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9k
cm1fZHBfbXN0X3RvcG9sb2d5LmMgfCAzICsrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3Bv
bG9neS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYwo+IGluZGV4IDRi
NzQxOTNiODljZS4uMzhiZjExMWU1ZjliIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZHBfbXN0X3RvcG9sb2d5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90
b3BvbG9neS5jCj4gQEAgLTUwMzQsNiArNTAzNCw5IEBAIGludCBkcm1fZHBfbXN0X2F0b21pY19j
aGVjayhzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gICAJaW50IGksIHJldCA9IDA7
Cj4gICAKPiAgIAlmb3JfZWFjaF9uZXdfbXN0X21ncl9pbl9zdGF0ZShzdGF0ZSwgbWdyLCBtc3Rf
c3RhdGUsIGkpIHsKPiArCQlpZiAoIW1nci0+bXN0X3N0YXRlKQo+ICsJCQljb250aW51ZTsKPiAr
Cj4gICAJCXJldCA9IGRybV9kcF9tc3RfYXRvbWljX2NoZWNrX3ZjcGlfYWxsb2NfbGltaXQobWdy
LCBtc3Rfc3RhdGUpOwo+ICAgCQlpZiAocmV0KQo+ICAgCQkJYnJlYWs7Cj4gCgotLSAKVGhhbmtz
LApNaWtpdGEgTGlwc2tpClNvZnR3YXJlIEVuZ2luZWVyLCBBTUQKbWlraXRhLmxpcHNraUBhbWQu
Y29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
