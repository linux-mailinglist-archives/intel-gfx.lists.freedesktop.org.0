Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E18D14AE50A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 23:54:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 391CB10E1E6;
	Tue,  8 Feb 2022 22:54:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3920E10E1E6;
 Tue,  8 Feb 2022 22:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644360846; x=1675896846;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=aPL35BSNappDsCRv+IIKJajTLjOCNHovIoDVmKD82rE=;
 b=WA+0DILJXbzSLu9tsPVvuQT6hEHTejXmZrNWUP2WHaoFA6c3KwyvX+Kj
 dtLyEpNh1LS9O8DhUIdfo6Me456u2dPZF5FR761tr42Rv5joxtvs1bGDm
 x28ESV8A+0hRowy79vrINM4cMvWcmny47Y6HqZtiDktWnGhOalGSGCl9g
 +trujhPhHnuDTk/K2BPDiVztqGld7DnXu9lzKH3aFEdAmNBOU9Mko99VD
 QOWQ7HxenRPxPVYhihDI+uHIYgMaHMJaaX6zRkIV2Ne/f+0fb/MUa0c4k
 WV8S+5Aa6y1N7wry+21FlA6MAleUD+vMt31EvR0dPaOrkjlbwGcdfDP7D Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="249277028"
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="249277028"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 14:54:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="601401972"
Received: from mduanebx-mobl1.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.212.243.149])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 14:54:05 -0800
Date: Tue, 8 Feb 2022 14:53:41 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>;,
 intel-gfx@lists.freedesktop.org;, dri-devel@lists.freedesktop.org
Message-ID: <20220208225341.GA11859@msatwood-mobl>
References: <20220208104524.2516209-1-lucas.demarchi@intel.com>
 <20220208104524.2516209-3-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220208104524.2516209-3-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 02/18] iosys-map: Add a few more helpers
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

On Tue, Feb 08, 2022 at 02:45:08AM -0800, Lucas De Marchi wrote:
> First the simplest ones:
> 
> 	- iosys_map_memset(): when abstracting system and I/O memory,
> 	  just like the memcpy() use case, memset() also has dedicated
> 	  functions to be called for using IO memory.
> 	- iosys_map_memcpy_from(): we may need to copy data from I/O
> 	  memory, not only to.
> 
> In certain situations it's useful to be able to read or write to an
> offset that is calculated by having the memory layout given by a struct
> declaration. Usually we are going to read/write a u8, u16, u32 or u64.
> 
> As a pre-requisite for the implementation, add iosys_map_memcpy_from()
> to be the equivalent of iosys_map_memcpy_to(), but in the other
> direction. Then add 2 pairs of macros:
> 
> 	- iosys_map_rd() / iosys_map_wr()
> 	- iosys_map_rd_field() / iosys_map_wr_field()
> 
> The first pair takes the C-type and offset to read/write. The second
> pair uses a struct describing the layout of the mapping in order to
> calculate the offset and size being read/written.
> 
> We could use readb, readw, readl, readq and the write* counterparts,
> however due to alignment issues this may not work on all architectures.
> If alignment needs to be checked to call the right function, it's not
> possible to decide at compile-time which function to call: so just leave
> the decision to the memcpy function that will do exactly that.
> 
> Finally, in order to use the above macros with a map derived from
> another, add another initializer: IOSYS_MAP_INIT_OFFSET().
> 
> v2:
>   - Rework IOSYS_MAP_INIT_OFFSET() so it doesn't rely on aliasing rules
>     within the union
>   - Add offset to both iosys_map_rd_field() and iosys_map_wr_field() to
>     allow the struct itself to be at an offset from the mapping
>   - Add documentation to iosys_map_rd_field() with example and expected
>     memory layout
> 
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: Christian König <christian.koenig@amd.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-kernel@vger.kernel.org
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  include/linux/iosys-map.h | 202 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 202 insertions(+)
> 
> diff --git a/include/linux/iosys-map.h b/include/linux/iosys-map.h
> index edd730b1e899..c6b223534b21 100644
> --- a/include/linux/iosys-map.h
> +++ b/include/linux/iosys-map.h
> @@ -6,6 +6,7 @@
>  #ifndef __IOSYS_MAP_H__
>  #define __IOSYS_MAP_H__
>  
> +#include <linux/kernel.h>
>  #include <linux/io.h>
>  #include <linux/string.h>
>  
> @@ -120,6 +121,45 @@ struct iosys_map {
>  		.is_iomem = false,	\
>  	}
>  
> +/**
> + * IOSYS_MAP_INIT_OFFSET - Initializes struct iosys_map from another iosys_map
> + * @map_:	The dma-buf mapping structure to copy from
> + * @offset_:	Offset to add to the other mapping
> + *
> + * Initializes a new iosys_map struct based on another passed as argument. It
> + * does a shallow copy of the struct so it's possible to update the back storage
> + * without changing where the original map points to. It is the equivalent of
> + * doing:
> + *
> + * .. code-block:: c
> + *
> + *	iosys_map map = other_map;
> + *	iosys_map_incr(&map, &offset);
> + *
> + * Example usage:
> + *
> + * .. code-block:: c
> + *
> + *	void foo(struct device *dev, struct iosys_map *base_map)
> + *	{
> + *		...
> + *		struct iosys_map map = IOSYS_MAP_INIT_OFFSET(base_map, FIELD_OFFSET);
> + *		...
> + *	}
> + *
> + * The advantage of using the initializer over just increasing the offset with
> + * iosys_map_incr() like above is that the new map will always point to the
> + * right place of the buffer during its scope. It reduces the risk of updating
> + * the wrong part of the buffer and having no compiler warning about that. If
> + * the assignment to IOSYS_MAP_INIT_OFFSET() is forgotten, the compiler can warn
> + * about the use of uninitialized variable.
> + */
> +#define IOSYS_MAP_INIT_OFFSET(map_, offset_) ({				\
> +	struct iosys_map copy = *map_;					\
> +	iosys_map_incr(&copy, offset_);					\
> +	copy;								\
> +})
> +
>  /**
>   * iosys_map_set_vaddr - Sets a iosys mapping structure to an address in system memory
>   * @map:	The iosys_map structure
> @@ -239,6 +279,26 @@ static inline void iosys_map_memcpy_to(struct iosys_map *dst, size_t dst_offset,
>  		memcpy(dst->vaddr + dst_offset, src, len);
>  }
>  
> +/**
> + * iosys_map_memcpy_from - Memcpy from iosys_map into system memory
> + * @dst:	Destination in system memory
> + * @src:	The iosys_map structure
> + * @src_offset:	The offset from which to copy
> + * @len:	The number of byte in src
> + *
> + * Copies data from a iosys_map with an offset. The dest buffer is in
> + * system memory. Depending on the mapping location, the helper picks the
> + * correct method of accessing the memory.
> + */
> +static inline void iosys_map_memcpy_from(void *dst, const struct iosys_map *src,
> +					 size_t src_offset, size_t len)
> +{
> +	if (src->is_iomem)
> +		memcpy_fromio(dst, src->vaddr_iomem + src_offset, len);
> +	else
> +		memcpy(dst, src->vaddr + src_offset, len);
> +}
> +
>  /**
>   * iosys_map_incr - Increments the address stored in a iosys mapping
>   * @map:	The iosys_map structure
> @@ -255,4 +315,146 @@ static inline void iosys_map_incr(struct iosys_map *map, size_t incr)
>  		map->vaddr += incr;
>  }
>  
> +/**
> + * iosys_map_memset - Memset iosys_map
> + * @dst:	The iosys_map structure
> + * @offset:	Offset from dst where to start setting value
> + * @value:	The value to set
> + * @len:	The number of bytes to set in dst
> + *
> + * Set value in iosys_map. Depending on the buffer's location, the helper
> + * picks the correct method of accessing the memory.
> + */
> +static inline void iosys_map_memset(struct iosys_map *dst, size_t offset,
> +				    int value, size_t len)
> +{
> +	if (dst->is_iomem)
> +		memset_io(dst->vaddr_iomem + offset, value, len);
> +	else
> +		memset(dst->vaddr + offset, value, len);
> +}
> +
> +/**
> + * iosys_map_rd - Read a C-type value from the iosys_map
> + *
> + * @map__:	The iosys_map structure
> + * @offset__:	The offset from which to read
> + * @type__:	Type of the value being read
> + *
> + * Read a C type value from iosys_map, handling possible un-aligned accesses to
> + * the mapping.
> + *
> + * Returns:
> + * The value read from the mapping.
> + */
> +#define iosys_map_rd(map__, offset__, type__) ({			\
> +	type__ val;							\
> +	iosys_map_memcpy_from(&val, map__, offset__, sizeof(val));	\
> +	val;								\
> +})
> +
> +/**
> + * iosys_map_wr - Write a C-type value to the iosys_map
> + *
> + * @map__:	The iosys_map structure
> + * @offset__:	The offset from the mapping to write to
> + * @type__:	Type of the value being written
> + * @val__:	Value to write
> + *
> + * Write a C-type value to the iosys_map, handling possible un-aligned accesses
> + * to the mapping.
> + */
> +#define iosys_map_wr(map__, offset__, type__, val__) ({			\
> +	type__ val = (val__);						\
> +	iosys_map_memcpy_to(map__, offset__, &val, sizeof(val));	\
> +})
> +
> +/**
> + * iosys_map_rd_field - Read a member from a struct in the iosys_map
> + *
> + * @map__:		The iosys_map structure
> + * @struct_offset__:	Offset from the beggining of the map, where the struct
> + *			is located
> + * @struct_type__:	The struct describing the layout of the mapping
> + * @field__:		Member of the struct to read
> + *
> + * Read a value from iosys_map considering its layout is described by a C struct
> + * starting at @struct_offset__. The field offset and size is calculated and its
> + * value read handling possible un-aligned memory accesses. For example: suppose
> + * there is a @struct foo defined as below and the value ``foo.field2.inner2``
> + * needs to be read from the iosys_map:
> + *
> + * .. code-block:: c
> + *
> + *	struct foo {
> + *		int field1;
> + *		struct {
> + *			int inner1;
> + *			int inner2;
> + *		} field2;
> + *		int field3;
> + *	} __packed;
> + *
> + * This is the expected memory layout of a buffer using iosys_map_rd_field():
> + *
> + * +------------------------------+--------------------------+
> + * | Address                      | Content                  |
> + * +==============================+==========================+
> + * | buffer + 0000                | start of mmapped buffer  |
> + * |                              | pointed by iosys_map     |
> + * +------------------------------+--------------------------+
> + * | ...                          | ...                      |
> + * +------------------------------+--------------------------+
> + * | buffer + ``struct_offset__`` | start of ``struct foo``  |
> + * +------------------------------+--------------------------+
> + * | ...                          | ...                      |
> + * +------------------------------+--------------------------+
> + * | buffer + wwww                | ``foo.field2.inner2``    |
> + * +------------------------------+--------------------------+
> + * | ...                          | ...                      |
> + * +------------------------------+--------------------------+
> + * | buffer + yyyy                | end of ``struct foo``    |
> + * +------------------------------+--------------------------+
> + * | ...                          | ...                      |
> + * +------------------------------+--------------------------+
> + * | buffer + zzzz                | end of mmaped buffer     |
> + * +------------------------------+--------------------------+
> + *
> + * Values automatically calculated by this macro or not needed are denoted by
> + * wwww, yyyy and zzzz. This is the code to read that value:
> + *
> + * .. code-block:: c
> + *
> + *	x = iosys_map_rd_field(&map, offset, struct foo, field2.inner2);
> + *
> + * Returns:
> + * The value read from the mapping.
> + */
> +#define iosys_map_rd_field(map__, struct_offset__, struct_type__, field__) ({	\
> +	struct_type__ *s;							\
> +	iosys_map_rd(map__, struct_offset__ + offsetof(struct_type__, field__),	\
> +		     typeof(s->field__));					\
> +})
> +
> +/**
> + * iosys_map_wr_field - Write to a member of a struct in the iosys_map
> + *
> + * @map__:		The iosys_map structure
> + * @struct_offset__:	Offset from the beggining of the map, where the struct
> + *			is located
> + * @struct_type__:	The struct describing the layout of the mapping
> + * @field__:		Member of the struct to read
> + * @val__:		Value to write
> + *
> + * Write a value to the iosys_map considering its layout is described by a C struct
> + * starting at @struct_offset__. The field offset and size is calculated and the
> + * @val__ is written handling possible un-aligned memory accesses. Refer to
> + * iosys_map_rd_field() for expected usage and memory layout.
> + */
> +#define iosys_map_wr_field(map__, struct_offset__, struct_type__, field__, val__) ({	\
> +	struct_type__ *s;								\
> +	iosys_map_wr(map__, struct_offset__ + offsetof(struct_type__, field__),		\
> +		     typeof(s->field__), val__);					\
> +})
> +
>  #endif /* __IOSYS_MAP_H__ */
> -- 
> 2.35.1
> 
