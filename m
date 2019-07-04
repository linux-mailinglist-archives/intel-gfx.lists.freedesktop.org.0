Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 352BB5FDE9
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 22:50:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7992C6E2D0;
	Thu,  4 Jul 2019 20:50:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 463846E2D0
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 20:50:22 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id v6so2569649vsq.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jul 2019 13:50:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K/IEaP5cuC6qjiK/mJIDKRa4KX1ilNZvrrVjaGjJiDI=;
 b=bxtlWJt5dTujeigoX6gp+0yxxhIpUE7o5Z4wktwkCnImA4irG3dwphn/zPMyHqhIgj
 Rl5sh9uZMAmlauvXQt25khEa5PXjXw4W9rhjeGW7gqQvz7PQajrAW2kCeCJLXBh2cuo7
 T6ZlGH1M2IeGZR8JyF99r6Mr35Hb3nAu8dCAvLfUed3LWXWWdeRVIrG7a5gyr1iUnd0V
 ZYxbbn5o4jvxYMDjNaO//AxKmvgtxNRRyTZ9NZsA/VrN3Pr9F4j/7GfubyiyA2lkG5O4
 w0PpSafnkILmN9EqU6INI9yKdtkgl9jIh08fH6KZR6AWbQ5wC6zy7HxNhlxhYVq0sgN6
 kyhQ==
X-Gm-Message-State: APjAAAXYl0rs32QGBEdUSBKkuaa+ARShSkqy+vj/gkg9i72VZ3a6uo55
 rwSJlM3zLXar5W/SRdYlugH+dGyFa9zg7fW4eek=
X-Google-Smtp-Source: APXvYqyjEl7ILEVK+H4mrkfsED3H7NRnNHOYI+w513e+ujpPSX+IL+DrXW1hGSzOxgYePR/jF9k3Kpp0Nj/CBCkKuP4=
X-Received: by 2002:a67:f1d6:: with SMTP id v22mr113777vsm.178.1562273421433; 
 Thu, 04 Jul 2019 13:50:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190704201656.15775-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190704201656.15775-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 4 Jul 2019 21:49:55 +0100
Message-ID: <CAM0jSHMWkyFtwcEeqNgd-yEnYK0a5Qh4YfAQbu5doKpENXT8Ww@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=K/IEaP5cuC6qjiK/mJIDKRa4KX1ilNZvrrVjaGjJiDI=;
 b=tO2JpKRQaEwMi+GbvR9NGLiJticuZ//nebJGcEDJK4IDB+mRon3XY69Jzl0RtFH0KE
 ENXOOc/hB9u7D5awaOn2kqsc4RsxU97/R4dRNSd4o+1pg4vEtIDI1GTIcHm+TKsGkASl
 +Bn+jgx2CTktsXdYncMkQPAXde+dIIbds/CeGmzzkaCSCCHuenD8rVY0z2khJRvYiCG2
 5/agl6m/OBYIL6nUmWVIlDTHYZIRweA0k9qJc6DgEHTWxdvHwsgevzxt9B13zPfFwbw5
 oTzjm1BZ8Jdjup5UthEOr9K5CpDz8WmGKxnZkFxDssu0UPL5/PYxqxQEj/6lYoD4hM6n
 23xA==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Mark the freed page table
 entries with scratch
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>, Mika Kuoppala <mika.kuoppala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCA0IEp1bCAyMDE5IGF0IDIxOjE3LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBPbiB1bndpbmRpbmcgdGhlIGFsbG9jYXRpb24gZXJyb3Ig
cGF0aCBhbmQgaGF2aW5nIGZyZWVkIHRoZSBwYWdlIHRhYmxlCj4gZW50cnksIGl0IGlzIGltcGVy
YXRpdmUgdGhhdCB3ZSBtYXJrIGl0IGFzIHNjcmF0Y2guCj4KPiA8ND4gWzQxNi4wNzU1NjldIGdl
bmVyYWwgcHJvdGVjdGlvbiBmYXVsdDogMDAwMCBbIzFdIFBSRUVNUFQgU01QIFBUSQo+IDw0PiBb
NDE2LjA3NTgwMV0gQ1BVOiAwIFBJRDogMjM4NSBDb21tOiBrd29ya2VyL3UyOjExIFRhaW50ZWQ6
IEcgICAgIFUgICAgICAgICAgICA1LjIuMC1yYzctQ0ktUGF0Y2h3b3JrXzEzNTM0KyAjMQo+IDw0
PiBbNDE2LjA3NjE2Ml0gSGFyZHdhcmUgbmFtZTogUUVNVSBTdGFuZGFyZCBQQyAoaTQ0MEZYICsg
UElJWCwgMTk5NiksIEJJT1MgcmVsLTEuMTAuMS0wLWc4ODkxNjk3LXByZWJ1aWx0LnFlbXUtcHJv
amVjdC5vcmcgMDQvMDEvMjAxNAo+IDw0PiBbNDE2LjA3NjUyMl0gV29ya3F1ZXVlOiBpOTE1IF9f
aTkxNV92bV9yZWxlYXNlIFtpOTE1XQo+IDw0PiBbNDE2LjA3Njc1NF0gUklQOiAwMDEwOmdlbjhf
cHBndHRfY2xlYW51cF8zbHZsKzB4NTgvMHhiMCBbaTkxNV0KPiA8ND4gWzQxNi4wNzcwMjNdIENv
ZGU6IDgxIGUyIDA0IGZlIGZmIGZmIDgxIGMyIGZmIDAxIDAwIDAwIDRjIDhkIDc0IGQ2IDU4IDRk
IDhiIDY1IDAwIDRkIDNiIGE3IDI4IDAyIDAwIDAwIDc0IDQwIDQ5IDhkIDVjIDI0IDUwIDQ5IDgx
IGM0IDUwIDEwIDAwIDAwIDw0OD4gOGIgMmIgNDkgM2IgYWYgMjAgMDIgMDAgMDAgNzQgMTMgNGMg
ODkgZmYgNDggODkgZWUgZTggMDEgZmIgZmYKPiA8ND4gWzQxNi4wNzc0NDVdIFJTUDogMDAxODpm
ZmZmYzkwMDAwNDZiZDk4IEVGTEFHUzogMDAwMTAyMDYKPiA8ND4gWzQxNi4wNzc2MjVdIFJBWDog
MDAwMTAwMDAwMDAwMDAwMCBSQlg6IDZiNmI2YjZiNmI2YjZiYmIgUkNYOiA4YjRiNTZkNTAwMDAw
MDAwCj4gPDQ+IFs0MTYuMDc3ODM4XSBSRFg6IDAwMDAwMDAwMDAwMDAxZmYgUlNJOiBmZmZmODg4
MDVhNTc4MDA4IFJESTogZmZmZjg4ODA1YmQwZWZjOAo+IDw0PiBbNDE2LjA3ODE2N10gUkJQOiBm
ZmZmODg4MDViZDBlZmM4IFIwODogMDAwMDAwMDAwNGU0MmI5MyBSMDk6IDAwMDAwMDAwMDAwMDAw
MDEKPiA8ND4gWzQxNi4wNzgzODFdIFIxMDogMDAwMDAwMDAwMDAwMDAwMCBSMTE6IGZmZmY4ODgw
NzdhMWIwYjggUjEyOiA2YjZiNmI2YjZiNmI3YmJiCj4gPDQ+IFs0MTYuMDc4NTk0XSBSMTM6IGZm
ZmY4ODgwNWE1NzgwNTggUjE0OiBmZmZmODg4MDVhNTc5MDU4IFIxNTogZmZmZjg4ODA1YmQwZWZj
OAo+IDw0PiBbNDE2LjA3ODgxNV0gRlM6ICAwMDAwMDAwMDAwMDAwMDAwKDAwMDApIEdTOmZmZmY4
ODgwN2RhMDAwMDAoMDAwMCkga25sR1M6MDAwMDAwMDAwMDAwMDAwMAo+IDw0PiBbNDE2LjA3OTM5
NV0gQ1M6ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMwo+IDw0
PiBbNDE2LjA3OTg1MV0gQ1IyOiAwMDAwNTYxNjBmZWMyYjE0IENSMzogMDAwMDAwMDA3MWJiYzAw
MyBDUjQ6IDAwMDAwMDAwMDAzNjA2ZjAKPiA8ND4gWzQxNi4wODAzODhdIENhbGwgVHJhY2U6Cj4g
PDQ+IFs0MTYuMDgwODI4XSAgZ2VuOF9wcGd0dF9jbGVhbnVwKzB4NjQvMHgxMDAgW2k5MTVdCj4g
PDQ+IFs0MTYuMDgxMzk5XSAgX19pOTE1X3ZtX3JlbGVhc2UrMHhmYy8weDFkMCBbaTkxNV0KPgo+
IEZpeGVzOiAxZDFiNTQ5MGI5MWMgKCJkcm0vaTkxNS9ndHQ6IFJlcGxhY2Ugc3RydWN0X211dGV4
IHNlcmlhbGlzYXRpb24gZm9yIGFsbG9jYXRpb24iKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRo
ZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAaW50
ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29t
PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
